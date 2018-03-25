<?php
  require_once('phpscripts/config.php');

  $tbl = $_GET['tbl'];
  $id = $_GET['id'];

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
  <section class="edit-row">


    <?php
      $col = "id";
      echo singleEdit($tbl, $col, $id);

     ?>
   </section>
</body>
</html>
