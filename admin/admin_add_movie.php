<?php
  require_once('phpscripts/config.php');

  $genQuery = getAll('genre', 'name');
  $companyQuery = getAll('company', 'name');

  if (isset($_POST['submit'])){
    $cover = $_FILES['cover'];
    $title = $_POST['title'];
    $year = trim($_POST['year']);
    $runtime = trim($_POST['runtime']);
    $storyline = $_POST['storyline'];
    $company = $_POST['company'];
    $rating = $_POST['rating'];
    $review = $_POST['review'];
    $kids = $_POST['kids'];
    $genres = $_POST['genre'];

    $movieId = addMovie($cover, $title, $year, $runtime, $storyline, $rating, $review, $kids);

    if(!empty($genres)) {
      foreach($genres as $row) {
        $result = addLinkRow("movie_genre", "movie_id", "genre_id", $movieId, $row);
      }
    }

    if(!empty($company)) {
      $result = addLinkRow("movie_company", "movie_id", "company_id", $movieId, $company);
    }

    redirect_to("admin_index.php");
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>Admin | Add Movie</title>
</head>
<body>
  <h1 class="hidden">Admin Login Page</h1>
  <main id="container" class="create-cont">
    <section class="edit-row">
      <h1 class="title">Add Movie</h1>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_add_movie.php" method="post" enctype="multipart/form-data">
        <label for="cover">Cover image:</label>
        <input type="file" name="cover" value="">

        <label for="title">Movie Title:</label>
        <input type="text" name="title" value="">

        <label for="year">Movie Year:</label>
        <input type="number" name="year" value="">

        <label for="runtime">Movie Runtime (in minutes):</label>
        <input type="number" name="runtime" value="">

        <label for="storyline">Movie Storyline:</label>
        <textarea name="storyline" rows="8"></textarea>


        <label for="company">Movie Production Company:</label>
        <select name="company">
          <option value="" selected>Choose an Option:</option>
          <?php
            while($option = mysqli_fetch_array($companyQuery)) {
              echo "<option value=\"{$option['id']}\">{$option['name']}</option>";
            }
           ?>
        </select>

        <label for="rating">Movie Parental Rating:</label>
        <select name="rating">
          <option value="" selected>Choose an Option:</option>
          <option value="1">G (General)</option>
          <option value="2">PG (Parental Guidance)</option>
          <option value="3">PG-13 (Innappropriate Under 13)</option>
          <option value="4">R (Restricted)</option>
          <option value="5">NC-17 (Adults Only)</option>
          <option value="6">NR (Not Rated)</option>
        </select>

        <label for="review">Movie Review (from 1 to 10):</label>
        <input type="text" name="review" value="">

        <label for="kids">Kids:</label>
        <select name="kids">
          <option value="0">No</option>
          <option value="1">Yes</option>
        </select>

        <fieldset class="form-options">
          <legend>Genres:</legend>
          <div>
            <?php
              while($option = mysqli_fetch_array($genQuery)) {
                echo "<input type=\"checkbox\" name=\"genre[]\" value=\"{$option['id']}\">{$option['name']}<br>";
              }
             ?>
          </div>
        </fieldset>
        <input class="button" type="submit" name="submit" value="Save Movie">
      </form>
      <a class="back-index movie" href="admin_index.php">Go Back</a>
    </section>
  </main>
</body>
</html>
