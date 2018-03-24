<?php
  require_once('phpscripts/config.php');

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
  <?php
    $tbl = "tbl_movies";
    $col = "movies_id";
    $id = 1;
    echo singleEdit($tbl, $col, $id);

   ?>
</body>
</html>
