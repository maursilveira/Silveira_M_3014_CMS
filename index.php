<?php
	require_once('admin/phpscripts/config.php');

	if(isset($_GET['filter'])){
		$tbl = "movie";
		$tbl2 = "genre";
		$tbl3 = "movie_genre";
		$col = "id";
		$col2 = "id";
		$col3 = "name";
		$filter = "action";
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "movie";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to the Finest Selection of Blu-rays on the internets!</title>
</head>
<body>
<?php
	include('includes/nav.html');

	if(!is_string($getMovies)){
		while($row = mysqli_fetch_array($getMovies)){
			echo "<img src=\"images/{$row['cover']}\" alt=\"{$row['title']}\">
				<h2>{$row['title']}</h2>
				<p>{$row['year']}</p>
				<a href=\"details.php?id={$row['id']}\">More Details...</a><br><br>
			";
		}
	}else{
		echo "<p class=\"error\">{$getMovies}</p>";
	}

	include('includes/footer.html');
?>
</body>
</html>
