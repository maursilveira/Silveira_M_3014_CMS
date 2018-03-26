<?php
  require_once('phpscripts/config.php');

  $linkTbl = 'movie';
  $order = 'title';
  $movQuery = getAll($linkTbl, $order);

  if (isset($_POST['submit'])){
    $tbl = 'director';
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $movies = $_POST['movie'];

    $directorId = addPerson($tbl, $fname, $lname);

    if(!empty($movies)) {
      foreach($movies as $row) {
        $result = addLinkRow("movie_director", "movie_id", "director_id", $row, $directorId);
      }
    }
    // redirect_to("admin_index.php");
  }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>Admin | Add Director</title>
</head>
<body>
  <h1 class="hidden">Admin Login Page</h1>
  <main id="container" class="create-cont">
    <section class="edit-row">
      <h1 class="title">Add Director</h1>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_add_director.php" method="post">
        <label for="fname">Director First Name:</label>
        <input type="text" name="fname" value="">
        <label for="lname">Director Last Name:</label>
        <input type="text" name="lname" value="">
        <fieldset class="form-options">
          <legend>Movies:</legend>
          <div>
            <?php
              while($option = mysqli_fetch_array($movQuery)) {
                echo "<input type=\"checkbox\" name=\"movie[]\" value=\"{$option['id']}\">{$option[1]}<br>";
              }
             ?>
          </div>
        </fieldset>
        <input class="button" type="submit" name="submit" value="Save Director">
      </form>
      <a class="back-index movie" href="admin_index.php">Go Back</a>
    </section>
  </main>
</body>
</html>
