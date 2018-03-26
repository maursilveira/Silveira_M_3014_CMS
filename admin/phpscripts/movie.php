<?php
  // ini_set('display_errors', 1);
  // error_reporting(E_ALL);

  function addMovie($cover, $title, $year, $runtime, $storyline, $rating, $review, $kids) {
    include('connect.php');

    $titleChar = htmlspecialchars($title, ENT_QUOTES);
    $storylineChar = htmlspecialchars($storyline, ENT_QUOTES);

    if($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg") {
      $targetPath = "../images/{$cover['name']}";

      if(move_uploaded_file($cover['tmp_name'], $targetPath)) {
        $insertQuery = "INSERT INTO movie (cover, title, year, runtime, storyline, rating, review, kids) VALUES ('{$cover['name']}', '{$titleChar}', {$year}, {$runtime}, '{$storylineChar}', {$rating}, '{$review}', {$kids})";

        $result = mysqli_query($link, $insertQuery);

        if($result) {
          $getLastQuery = "SELECT * FROM movie ORDER BY id DESC LIMIT 1";

          $lastResult = mysqli_query($link, $getLastQuery);

          $row = mysqli_fetch_array($lastResult);
          $lastId = $row['id'];

          return $lastId;

        }
      }
    }
    else {
      echo "File is not a jpg image";
    }

    mysqli_close($link);
  }

 ?>
