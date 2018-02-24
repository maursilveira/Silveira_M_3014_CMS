<?php
  function logIn($username, $password, $ip) {
    require_once('connect.php');
    $maxAttempts = 3;
    $username = mysqli_real_escape_string($link, $username); //sanitize input from potential sql injection
    $password = mysqli_real_escape_string($link, $password);

    $loginString = "SELECT * FROM tbl_user WHERE user_name = '{$username}'";

    $user_set = mysqli_query($link, $loginString);

    // check if user exists
    // user exists
    if(mysqli_num_rows($user_set)) {
      $founduser = mysqli_fetch_array($user_set, MYSQLI_ASSOC);
      $id = $founduser['user_id'];

      // check if user if locked
      // user is locked
      if($founduser['user_attempt_fail'] >= $maxAttempts) {
        $message = 'Account is locked.<br>Please contact Administrator.';
        return $message;
      }
      // user is not locked
      else {
        // check if password matches hash in database
        $checked = checkPassword($password, $founduser['user_pass']);

        // password is correct
        if($checked) {
          $_SESSION['user_id'] = $id;
          $_SESSION['user_name'] = $founduser['user_fname'];
          $_SESSION['user_last_login'] = $founduser['user_last_login'];
          if(mysqli_query($link, $loginString)) {
            // store IP
            $updateIp = "UPDATE tbl_user SET user_ip = '{$ip}' WHERE user_id = {$id}";
            $updatequery = mysqli_query($link, $updateIp);

            // reset failed login sttempts
            $resetFail = "UPDATE tbl_user SET user_attempt_fail = 0 WHERE user_id = {$id}";
            $runReset = mysqli_query($link, $resetFail);

            // store date and time of last successful login
            $setTime = "UPDATE tbl_user SET user_last_login = NOW() WHERE user_id = {$id}";
            $runTime = mysqli_query($link, $setTime);
          }
          redirect_to('admin_index.php');
        }
        // password is not correct
        else {
          $message = 'Invalid credentials.';

          // get current number of failed login attempts
          $getCur = "SELECT user_attempt_fail FROM tbl_user WHERE user_id = {$id}";
          $curFailed = mysqli_query($link, $getCur);
          $attempt = mysqli_fetch_array($curFailed, MYSQLI_ASSOC);
          $newVal = $attempt['user_attempt_fail']+1;

          // increment number of failed login attempts
          $incrementFail = "UPDATE tbl_user SET user_attempt_fail = {$newVal} WHERE user_id = {$id}";
          $runIncrement = mysqli_query($link, $incrementFail);

          if($newVal == $maxAttempts) {
            $name = $founduser['user_name'];
            $email = $founduser['user_email'];
            // send email to user email address
            $sendMail = submitLockAccountMessage($name, $email);

            $message = $message.'<br>Account is locked.<br>An email was sent to your email address.<br>Please contact Administrator.';
          }
          else if($newVal == $maxAttempts-1) {
            $message = $message.'<br>Account will be locked out on next failed login attempt.';
          }

          return $message;
        }
      }
    }
    // user does not exist
    else {
      $message = 'Invalid credentials.';

      return $message;
    }

    mysqli_close($link);
  }

 ?>
