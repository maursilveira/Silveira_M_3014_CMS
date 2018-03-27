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
    else if($dir == 'getAll') {
      $tbl = $_GET['tbl'];
      $order = $_GET['order'];
      $result = getAll($tbl, $order);
      $rows = array();
      while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
      }
      echo json_encode($rows);
    }
    else if($dir == 'getSingle') {
      $tbl = $_GET['tbl'];
      $col = $_GET['col'];
      $id = $_GET['id'];
      $result = getSingle($tbl, $col, $id);
      $rows = array();
      while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
      }
      echo json_encode($rows);
    }
    else if($dir == 'getRelation') {
      $tbl = $_GET['tbl'];
      $tbl2 = $_GET['tbl2'];
      $tbl3 = $_GET['tbl3'];
      $col = $_GET['col'];
      $col2 = $_GET['col2'];
      $id = $_GET['id'];
      if($_GET['order']) {
        $order = $_GET['order'];
      }
      else {
        $order = 'id';
      }
      $result = getRelation($tbl, $tbl2, $tbl3, $col, $col2, $id, $order);
      $rows = array();
      while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
      }
      echo json_encode($rows);
    }
    else if($dir == 'getForeign') {
      $tbl = $_GET['tbl'];
      $tbl2 = $_GET['tbl2'];
      $col = $_GET['col'];
      $col2 = $_GET['col2'];
      $col3 = $_GET['col3'];
      $id = $_GET['id'];
      $result = getForeign($tbl, $tbl2, $col, $col2, $col3, $id);
      $rows = array();
      while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
      }
      echo json_encode($rows);
    }
    else if($dir == 'deleteRow') {
      $tbl = $_GET['tbl'];
      $col = $_GET['col'];
      $id = $_GET['id'];
      $result = deleteRow($tbl, $col, $id);
      return $result;
    }
    else {
      echo 'Caller id incorrectly';
    }
  }

 ?>
