<?php
	require_once('admin/phpscripts/config.php');

	$moviesTbl = "movie";
	$moviesOrder = "title";
	$getMovies = getAll($moviesTbl, $moviesOrder);

	$genreTbl = "genre";
	$genreOrder = "name";
	$getGenres = getAll($genreTbl, $genreOrder);

?>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
	<title>Roku Flashback</title>
</head>
<body>
	<div id="container">
		<div id="lbmovie">
      <div id="lbmovie-content">
        <div class="movie-wrapper">
          <img class="lb-cover" src="" alt="">
          <div class="movie-detail">
            <div class="movie-title">
              <p class="lb-title"></p>
              <p class="lb-year"></p>
            </div>
            <p class="lb-genre"></p>
            <p class="lb-runtime"></p>
            <p class="lb-director"></p>
            <p class="lb-cast"></p>
						<p class="lb-company"></p>
            <div class="lb-rate">
              <div class="lb-rating">
                <img class="lb-rating-us" src="" alt="">
                <img class="lb-rating-ca" src="" alt="">
              </div>
              <div class="lb-review-bg">
                <div class="lb-review-color"></div>
              </div>
              <div class="lb-social">
                <ul>
                  <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                  <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                  <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
              </div>
            </div>
						<p class="lb-storyline"></p>
          </div>
        </div>
        <!-- <video class="lb-trailer" controls>
          <source src="" type="video/mp4"/>
        </video> -->
      </div>
      <i id="lbmovie-close" class="fas fa-times"></i>
    </div>

		<?php
			include('includes/header.html');
		 ?>

		<section id="movies">
	  <h2 class="section-title">Movies</h2>
	  <div class="movies-row">
	    <select class="genre-selector" name="row-1">
				<option selected="true" value="0">All Genres</option>
				<?php
				if(!is_string($getGenres)){
					while($row = mysqli_fetch_array($getGenres)){
						echo "<option value=\"{$row['id']}\">{$row['name']}</option>";
					}
				}else{
					echo "<p class=\"error\">{$getGenres}</p>";
				}
				 ?>
	    </select>
	    <ul>
				<?php
				if(!is_string($getMovies)){
					while($row = mysqli_fetch_array($getMovies)){
						echo "<img data-id=\"{$row['id']}\" class=\"movie-cover\" src=\"images/{$row['cover']}\" alt=\"{$row['title']} cover\" title=\"{$row['title']}\">";
					}
				}else{
					echo "<p class=\"error\">{$getMovies}</p>";
				}
				 ?>
	    </ul>
	  </div>
	</section>

	<?php
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
	</div>
	<script src="js/main.js" charset="utf-8"></script>
</body>
</html>
