<?php
  require_once('phpscripts/config.php');
  // confirmLoggedIn();

  $tbl = 'user';
  $order = 'user_fname';

  $users = getAll($tbl, $order);
  // $info = mysqli_fetch_array($users);
  // echo $info;

  // if(isset($_POST['submit'])) {
  //   $fname = trim($_POST['fname']);
  //   $username = trim($_POST['username']);
  //   $email = trim($_POST['email']);
  //   $result = editUser($id, $fname, $username, $email);
  //   $message = $result;
  // }
 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="css/main.css">
   <title>Admin | Delete User</title>
 </head>
 <body>
   <h1 class="hidden">Admin Delete User</h1>
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
     <h2 class="greetings">Delete User</h2>
     <ul id="delete-list">
       <?php
         while($row = mysqli_fetch_array($users)) {
           echo "<li><p>{$row['user_fname']}</p><a href=\"phpscripts/caller.php?caller_id=delete&id={$row['user_id']}\">Delete</a></li>";
         }
       ?>
     </ul>
     <a class="back-index" href="admin_index.php">Go Back</a>
   </main>
 </body>
 </html>
