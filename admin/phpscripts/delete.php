<?php

function deleteRow($tbl, $col, $id) {
  include('connect.php');

  $deleteString = "DELETE FROM {$tbl} WHERE {$col} = {$id}";

  $deleteQuery = mysqli_query($link, $deleteString);

  if($deleteQuery) {
    redirect_to('../admin_index.php'); //called by caller.php
  }
  else {
    $message = 'Error deleting row';
    return $message;
  }

  mysqli_close($link);
}

 ?>
