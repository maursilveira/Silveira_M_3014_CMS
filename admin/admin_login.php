<?php
  require_once('phpscripts/config.php');
  $ip = $_SERVER['REMOTE_ADDR'];
  // on form submit
  if (isset($_POST['submit'])){
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    // check if both input fields are filled
    // if yes, call function to log user in
    if ($username !== '' && $password !== '') {
      $result = logIn($username, $password, $ip);
      $message = $result;
    }
    // if no, display warning message
    else {
      $message = 'Please fill out the required fields';
    }
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>Admin Login</title>
</head>
<body>
  <h1 class="hidden">Admin Login Page</h1>
  <main id="container" class="login-cont">
    <section id="form-wrapper">
      <h2 class="hidden">Login Form</h2>
      <p class="title">Admin Login</p>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_login.php" method="post">
        <label for="username">Username</label>
        <input type="text" name="username" value="">
        <label for="password">Password</label>
        <input type="password" name="password" value="">
        <input class="button" type="submit" name="submit" value="Login">
      </form>
    </section>
  </main>
</body>
</html>
