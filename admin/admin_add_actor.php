<?php
  require_once('phpscripts/config.php');

  $linkTbl = 'movie';
  $order = 'title';
  $movQuery = getAll($linkTbl, $order);

  if (isset($_POST['submit'])){
    $tbl = 'actor';
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $movies = $_POST['movie'];

    $actorId = addPerson($tbl, $fname, $lname);

    if(!empty($movies)) {
      foreach($movies as $row) {
        $result = addLinkRow("movie_actor", "movie_id", "actor_id", $row, $actorId);
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
  <title>Admin | Add Actor</title>
</head>
<body>
  <h1 class="hidden">Admin Login Page</h1>
  <main id="container" class="create-cont">
    <section class="edit-row">
      <h1 class="title">Add Actor</h1>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_add_actor.php" method="post">
        <label for="fname">Actor First Name:</label>
        <input type="text" name="fname" value="">
        <label for="lname">Actor Last Name:</label>
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
        <input class="button" type="submit" name="submit" value="Save Actor">
      </form>
      <a class="back-index movie" href="admin_index.php">Go Back</a>
    </section>
  </main>
</body>
</html>
