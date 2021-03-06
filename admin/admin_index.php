<?php
  require_once('phpscripts/config.php');

  confirmLoggedIn();
  // check if user has already logged in
  // if yes, show last login date and time
  if(!is_null($_SESSION['user_last_login'])) {
    $lastLogin = "Last Login: ".date("l, F d, Y - h:i:sA", strtotime($_SESSION['user_last_login']));
  }
  // if no, show message
  else {
    $lastLogin = "This is your first Login.";
  }
  // set timezone
  date_default_timezone_set('America/Toronto');
  // get current hour
  $curtime = date("H");
  //check hour and show proper message
  if($curtime >= 6 && $curtime <= 11) {
    $messageTime = "Good Morning, ";
  }
  else if($curtime >= 12 && $curtime <=18) {
    $messageTime = "Good Afternoon, ";
  }
  else {
    $messageTime = "Good Evening, ";
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="css/main.css">
  <title>Admin | Home Page</title>
</head>
<body>
  <h1 class="hidden">Admin Home Page</h1>
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
  <main id="container" class="index-cont">
    <h2 class="greetings">Welcome to Admin Page</h2>
    <?php
      echo '<p class="welcome-message">'.$messageTime.'<span>'.$_SESSION['user_name'].'</span></p>';
      echo '<p class="last-login">'.$lastLogin.'</p>';
    ?>

    <section class="functions">
      <h2 class="title">Movie Operations</h2>
      <ul>
        <li><a href="list_all.php?tbl=movie&order=title"><i class="ion-ios-film"></i>Movies</a></li>
        <li><a href="list_all.php?tbl=genre&order=name"><i class="ion-ios-pricetags"></i>Genres</a></li>
        <li><a href="list_all.php?tbl=actor&order=lname"><i class="ion-happy"></i>Actors</a></li>
        <li><a href="list_all.php?tbl=director&order=lname"><i class="ion-film-marker"></i>Directors</a></li>
        <li><a href="list_all.php?tbl=company&order=name"><i class="ion-briefcase"></i>Companies</a></li>
      </ul>
    </section>

    <section class="functions">
      <h2 class="title">User Operations</h2>
      <ul>
        <li><a href="admin_create_user.php" title="Create User"><i class="ion-android-add-circle"></i>Create User</a></li>
        <li><a href="admin_edit_user.php" title="Edit User"><i class="ion-edit"></i>Edit User</a></li>
        <li><a href="admin_delete_user.php" title="Delete User"><i class="ion-trash-a"></i>Delete User</a></li>
      </ul>
    </section>
  </main>
</body>
</html>
