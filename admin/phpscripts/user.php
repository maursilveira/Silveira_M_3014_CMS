<?php
  function createUser($fname, $username, $password, $email, $level) {
    include('connect.php');

    $userString = "INSERT INTO tbl_user (user_fname, user_name, user_pass, user_email, user_date, user_ip, user_level) VALUES ('${fname}', '${username}', '${password}', '${email}', NOW(), 'no', ${level})";

    $userQuery = mysqli_query($link, $userString);
    if($userQuery) {
      // redirect_to('admin_index.php');
      $created = true;
    }
    else {
      // $message = 'Fail to register user';
      // return $message;
      $created = false;
    }
    return $created;

    mysqli_close($link);
  }

  function editUser($id, $fname, $username, $email) { //check change password
    include('connect.php');

    $updateString = "UPDATE tbl_user SET user_fname = '{$fname}', user_name = '{$username}', user_email = '{$email}' WHERE user_id = {$id}";
    // echo $updateString;
    $updateQuery = mysqli_query($link, $updateString);

    if($updateQuery) {
      redirect_to('admin_index.php');
    }
    else {
      $message = 'Error editing user';
      return $message;
    }

    mysqli_close($link);
  }

  function deleteUser($id) {
    include('connect.php');

    $deleteString = "DELETE FROM tbl_user WHERE user_id = {$id}";

    $deleteQuery = mysqli_query($link, $deleteString);

    if($deleteQuery) {
      redirect_to('../admin_index.php'); //called by caller.php
    }
    else {
      $message = 'Error deleting user';
      return $message;
    }

    mysqli_close($link);
  }

  function generatePassword() {
    $chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $length = 8;

    $pass = '';
    for ($i = 0; $i < $length; $i++) {
        $pass .= substr($chars, mt_rand(0, strlen($chars) -1), 1);
    }
    return $pass;
  }

  function encryptPassword($pass) {
    $hash = password_hash($pass, PASSWORD_DEFAULT);
    return $hash;
  }

  function checkPassword($pass, $hash) {
    if (password_verify($pass, $hash)) {
      $check = true;
    }
    else {
      $check = false;
    }
    return $check;
  }

 ?>
