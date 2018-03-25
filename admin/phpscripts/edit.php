<?php

  include('connect.php');

  $tbl = $_POST['tbl'];
  $col = $_POST['col'];
  $id = $_POST['id'];

  unset($_POST['tbl']);
  unset($_POST['col']);
  unset($_POST['id']);
  unset($_POST['submit']);

  // echo count($_POST);
  $count = 0;
  $num = count($_POST);

  $qstring = "UPDATE {$tbl} SET ";

  foreach($_POST as $key => $value) {
    $count++;
    $qstring .= $key." = '".htmlspecialchars($value, ENT_QUOTES)."'";
    if($count < $num) {
      $qstring .= ", ";
    }
  }

  $qstring .= " WHERE {$col} = {$id}";

  // echo $qstring;
  $updateQuery = mysqli_query($link, $qstring);

  if($updateQuery) {
    header("Location:../admin_index.php");
  }
  else {
    echo "error";
  }

  mysqli_close($link);

 ?>
