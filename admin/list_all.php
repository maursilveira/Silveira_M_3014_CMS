<?php
  require_once('phpscripts/config.php');

  $tbl = $_GET['tbl'];
  $order = $_GET['order'];
  $col = "id";

  $list = getAll($tbl, $order);
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
  <h1 class="list-title"><?php echo $tbl; ?></h1>

  <section class="list-rows">
    <a class="list-new" href="admin_add_<?php echo $tbl; ?>.php">New</a>
    <ul>
      <?php
        while($row = mysqli_fetch_array($list)) {
          if($tbl === "movie") {
            echo "<li><p>{$row['title']}</p><a class=\"list-edit\" href=\"edit_all.php?tbl={$tbl}&id={$row['id']}\">Edit</a><a class=\"list-delete\" href=\"phpscripts/caller.php?caller_id=deleteRow&tbl={$tbl}&col=$col&id={$row['id']}\">Delete</a></li>";
          }
          else if($tbl === "genre" || $tbl === "company") {
            echo "<li><p>{$row['name']}</p><a class=\"list-edit\" href=\"edit_all.php?tbl={$tbl}&id={$row['id']}\">Edit</a><a class=\"list-delete\" href=\"phpscripts/caller.php?caller_id=deleteRow&tbl={$tbl}&col=$col&id={$row['id']}\">Delete</a></li>";
          }
          else if($tbl === "actor" || $tbl === "director") {
            echo "<li><p>{$row['lname']}, {$row['fname']}</p><a class=\"list-edit\" href=\"edit_all.php?tbl={$tbl}&id={$row['id']}\">Edit</a><a class=\"list-delete\" href=\"phpscripts/caller.php?caller_id=deleteRow&tbl={$tbl}&col=$col&id={$row['id']}\">Delete</a></li>";
          }
          else if($tbl === "rating") {
            echo "<li><p>{$row['name_us']}</p><a class=\"list-edit\" href=\"edit_all.php?tbl={$tbl}&id={$row['id']}\">Edit</a><a class=\"list-delete\" href=\"phpscripts/caller.php?caller_id=deleteRow&tbl={$tbl}&col=$col&id={$row['id']}\">Delete</a></li>";
          }
        }
       ?>
     </ul>
   </section>
</body>
</html>
