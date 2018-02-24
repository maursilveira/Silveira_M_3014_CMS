<?php

  function submitLockAccountMessage($name, $email) {
    $to = $email;
    $subj = "Your account has been locked";
    $extra = "Reply-To: donotreply@email.com";
    $msg = "Dear ".$name.",\n\nYour account has been locked for reaching maximum failed login attempts.\n\nContact Administrator to unlock your account";
    //mail($to, $subj, $msg, $extra);
  }

  function submitNewUserMessage($name, $email, $username, $password) {
    $to = $email;
    $subj = "Your Admin account was created";
    $url = "http://localhost/Silveira_M_3014_r2/admin/admin_login.php";
    $extra = "Reply-To: donotreply@email.com";
    $msg = "Dear ".$name.",\n\nYour Admin account has been created.\n\nUsername: ".$username."\nPassword: ".$password."\n\nTo log in, visit: ".$url;
    //mail($to, $subj, $msg, $extra);
  }

 ?>
