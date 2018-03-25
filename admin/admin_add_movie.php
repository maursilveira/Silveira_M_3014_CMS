<?php
  require_once('phpscripts/config.php');

  $tbl = 'genre';
  $order = 'name';
  $genQuery = getAll($tbl, $order);
  // echo $genQuery;



  if (isset($_POST['submit'])){
    $cover = $_FILES['cover'];
    $title = $_POST['title'];
    $year = trim($_POST['year']);
    $runtime = trim($_POST['runtime']);
    $storyline = $_POST['storyline'];
    $trailer = $_POST['trailer'];
    $release = $_POST['release'];
    $genre = $_POST['genre'];

    $result = addMovie($cover, $title, $year, $runtime, $storyline, $trailer, $release, $genre);
    $message = $result;
  }
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
  <main id="container" class="login-cont">
    <section id="form-wrapper">
      <h2 class="hidden">Login Form</h2>
      <p class="title">Add Movie</p>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_add_movie.php" method="post" enctype="multipart/form-data">
        <label for="photo">Cover image:</label>
        <input type="file" name="cover" value="">
        <label for="title">Movie Title:</label>
        <input type="text" name="title" value="">
        <label for="year">Movie Year:</label>
        <input type="text" name="year" value="">
        <label for="runtime">Movie Runtime:</label>
        <input type="text" name="runtime" value="">
        <label for="storyline">Movie Storyline:</label>
        <input type="text" name="storyline" value="">
        <label for="trailer">Movie Trailer:</label>
        <input type="text" name="trailer" value="">
        <label for="release">Movie Release:</label>
        <input type="text" name="release" value="">
        <select name="genre">
          <option>Select a genre</option>
          <?php
            while($row = mysqli_fetch_array($genQuery)) {
              echo "<option value=\"{$row['id']}\">{$row['name']}</option>";
            }
           ?>
        </select>
        <input class="button" type="submit" name="submit" value="Login">
      </form>
    </section>
  </main>
</body>
</html>
