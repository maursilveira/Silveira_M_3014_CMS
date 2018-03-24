<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "movie";
		$col = "id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

	<?php
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img src=\"images/{$row['cover']}\" alt=\"{$row['title']}\">
			<p>{$row['title']}</p>
			<p>{$row['year']}</p>
			<p>{$row['storyline']}</p>
			<a href=\"index.php\">Back...</a>
			";

		}else{
			echo "<p>{$getMovie}</p>";
		}

	?>

</body>
</html>
