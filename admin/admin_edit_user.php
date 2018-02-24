<?php
  require_once('phpscripts/config.php');
  // confirmLoggedIn();

  $id = $_SESSION['user_id'];
  $tbl = 'tbl_user';
  $col = 'user_id';
  $old = getSingle($tbl, $col, $id);
  // echo $old;
  $info = mysqli_fetch_array($old);
  // echo $info;

  if(isset($_POST['submit'])) {
    $fname = trim($_POST['fname']);
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $result = editUser($id, $fname, $username, $email);
    $message = $result;
    // $level = $_POST['level'];
    // if(empty($level)) {
    //   $message = 'Please select a user level';
    // }
    // else {
      // generate random password
      // $password = generatePassword();
      // encrypt password to be stored
      // $cryptPassword = encryptPassword($password);
      // store user information in database
      // $result = createUser($fname, $username, $cryptPassword, $email, $level);
      // $result = createUser($fname, $username, $cryptPassword, $email);

      // check if user was created
      // user created successully
      // if($result) {
      //   // send email to user
      //   $sendMail = submitNewUserMessage($fname, $email, $username, $password);
      //
      //   // display message containing username and password
      //   $created = '<div class="created-message"><p>User created successfully</p><p>Username: '.$username.'</p><p>Password: '.$password.'</p><p>An email was sent to '.$email.' with user credentials.</p></div>';
      // }
      // // failed to created user
      // else {
      //   $message = '<div class="error-message"><p>Fail to register user</p></div>';
      // }
    // }
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>Admin | Edit User</title>
</head>
<body>
  <h1 class="hidden">Admin Edit User</h1>
  <header>
    <a class="logout-button" href="phpscripts/caller.php?caller_id=logout">Logout</a>
    <nav>
      <h2 class="hidden">Main Navigation</h2>
      <ul>
        <li><a href="admin_index.php">Home</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="#">Profiles</a></li>
      </ul>
    </nav>
  </header>
  <main id="container" class="create-cont">
    <h2 class="greetings">Edit User</h2>
    <?php
      if(!empty($message)) {
        echo $message;
      }
      if(!empty($created)) {
        echo $created;
      }
    ?>
    <form id="create-form" action="admin_edit_user.php" method="post">
      <label for="fname">First Name:</label>
      <input type="text" name="fname" value="<?php echo $info['user_fname'] ?>" required>
      <label for="username">Username:</label>
      <input type="text" name="username" value="<?php echo $info['user_name'] ?>" required>
      <label for="email">Email:</label>
      <input type="email" name="email" value="<?php echo $info['user_email'] ?>" required>
      <label for="email">Password</label>
      <input type="password" name="password" value="">
      <div>
        <input type="submit" name="submit" value="Save">
      </div>
    </form>
</main>
</body>
</html>
