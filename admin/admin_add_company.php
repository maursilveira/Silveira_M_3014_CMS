<?php
  require_once('phpscripts/config.php');

  if (isset($_POST['submit'])){
    $tbl = 'company';
    $name = $_POST['name'];

    $result = addName($tbl, $name);

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
  <title>Admin | Add Company</title>
</head>
<body>
  <main id="container" class="create-cont">
    <section class="edit-row">
      <h1 class="title">Add Company</h1>
      <?php if (!empty($message)){
        echo "<p class=\"error-message\">".$message."</p>";
      } ?>
      <form action="admin_add_company.php" method="post">
        <label for="name">Production Company Name:</label>
        <input type="text" name="name" value="">

        <input class="button" type="submit" name="submit" value="Save Company">
      </form>
      <a class="back-index movie" href="admin_index.php">Go Back</a>
    </section>
  </main>
</body>
</html>
