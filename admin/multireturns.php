<?php
  require_once('phpscripts/config.php');
  $result = multiReturns(17);
  list($add, $multiply) = multiReturns(17);

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
  <?php
    echo "Result 1: {$result[0]}<br>";
    echo "Result 2: {$result[1]}<br>";
    echo "Result 3: {$add}<br>";
    echo "Result 4: {$multiply}<br>";
   ?>
</body>
</html>
