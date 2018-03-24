<?php
  // ini_set('display_errors', 1);
  // error_reporting(E_ALL);

  function addMovie($cover, $title, $year, $runtime, $storyline, $trailer, $release, $genre) {
    include('connect.php');
    // echo exec('whoami');

    // echo $cover['name'];

    if($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg") {
      $targetPath = "../images/{$cover['name']}";
      // echo "\n$targetPath";

      if(move_uploaded_file($cover['tmp_name'], $targetPath)) {
        // echo 'File transfer complete';

        $thumbCopy = "../images/thumb_{$cover['name']}";
        if(!copy($targetPath, $thumbCopy)) {
          $message = "Error to copy thumbnail";
          return $message;
        }
        //add to database
        $insertQuery = "INSERT INTO tbl_movies (movies_cover, movies_title, movies_year, movies_runtime, movies_storyline, movies_trailer, movies_release) VALUES ('{$cover['name']}', '{$title}', '{$year}', '{$runtime}', '{$storyline}', '{$trailer}', '{$release}')";

        $result = mysqli_query($link, $insertQuery);

        if($result) {
          $getLastQuery = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";

          $lastResult = mysqli_query($link, $getLastQuery);

          $row = mysqli_fetch_array($lastResult);
          $lastId = $row['movies_id'];
          // echo $lastId;

          $genreQuery = "INSERT INTO tbl_mov_genre (movies_id, genre_id) VALUES ({$lastId}, {$genre})";

          $genreResult = mysqli_query($link, $genreQuery);
        }
      }
    }
    else {
      echo "File is not a jpg image";
    }


    // $size = getimagesize($targetPath);
    // echo $size;
    mysqli_close($link);
  }

 ?>
