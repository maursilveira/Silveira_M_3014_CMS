<?php
  // this file is not called through config.php
  require_once('config.php');

  if(isset($_GET['caller_id'])) {
    $dir = $_GET['caller_id'];
    if($dir == 'logout') {
      loggedOut();
    }
    else if($dir == 'delete') {
      $id = $_GET['id'];
      deleteUser($id);
    }
    else {
      echo 'Caller id incorrectly';
    }
  }

 ?>
