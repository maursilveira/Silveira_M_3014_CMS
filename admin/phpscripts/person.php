<?php
  // ini_set('display_errors', 1);
  // error_reporting(E_ALL);

  function addPerson($tbl, $fname, $lname) {
    include('connect.php');

    $fnameChar = htmlspecialchars($fname, ENT_QUOTES);
    $lnameChar = htmlspecialchars($lname, ENT_QUOTES);

    $insertQuery = "INSERT INTO {$tbl} (fname, lname) VALUES ('{$fnameChar}', '{$lnameChar}')";

    $result = mysqli_query($link, $insertQuery);

    if($result) {
      $getLastQuery = "SELECT * FROM {$tbl} ORDER BY id DESC LIMIT 1";

      $lastResult = mysqli_query($link, $getLastQuery);

      $row = mysqli_fetch_array($lastResult);
      $lastId = $row['id'];

      return $lastId;
    }

    mysqli_close($link);
  }

  function addName($tbl, $name) {
    include('connect.php');

    $nameChar = htmlspecialchars($name, ENT_QUOTES);

    $insertQuery = "INSERT INTO {$tbl} (name) VALUES ('{$nameChar}')";

    $result = mysqli_query($link, $insertQuery);

    if($result) {
      $getLastQuery = "SELECT * FROM {$tbl} ORDER BY id DESC LIMIT 1";

      $lastResult = mysqli_query($link, $getLastQuery);

      $row = mysqli_fetch_array($lastResult);
      $lastId = $row['id'];

      return $lastId;
    }

    mysqli_close($link);
  }

 ?>
