(() => {
  var movies = document.querySelectorAll('.movie-cover');

  function getMovieInfo(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getSingle&tbl=movie&col=id&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        let lbTitle = lbmovie.querySelector('.lb-title');
        let lbYear = lbmovie.querySelector('.lb-year');
        let lbRuntime = lbmovie.querySelector('.lb-runtime');
        let lbStoryline = lbmovie.querySelector('.lb-storyline');
        let lbreview = lbmovie.querySelector('.lb-review-color');
        let lbCover = lbmovie.querySelector('.lb-cover');
        data.forEach(({title, year, runtime, storyline, review, cover, trailer}) => {
          lbTitle.innerHTML = title;
          lbYear.innerHTML = year;
          let hours = Math.floor(runtime/60);
          let minutes = runtime % 60;
          lbRuntime.innerHTML = `${hours}h ${minutes}min`;
          lbreview.style.width = review*10+'%';
          lbStoryline.innerHTML = storyline;
          lbCover.src = `images/${cover}`;
          lbCover.alt = title;
        });
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  // get all genres of a specific movie
  function getMovieGenre(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getRelation&tbl=movie&tbl2=genre&tbl3=movie_genre&col=id&col2=id&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        // console.log(data);
        let lbGenre = lbmovie.querySelector('.lb-genre');
        let genres = "";
        data.forEach(({name}) => {
          genres += `${name}, `;
        });
        genres = genres.replace(/, $/, '');
        lbGenre.innerHTML = genres;
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  // get cast of a movie
  function getMovieCast(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getRelation&tbl=movie&tbl2=actor&tbl3=movie_actor&col=id&col2=id&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        let lbCast = lbmovie.querySelector('.lb-cast');
        let cast = "";
        data.forEach(({fname, lname}) => {
          cast += `${fname} ${lname}, `;
        });
        cast = cast.replace(/, $/, '');
        lbCast.innerHTML = cast;
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  // get director of a movie
  function getMovieDirector(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getRelation&tbl=movie&tbl2=director&tbl3=movie_director&col=id&col2=id&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        let lbDirector = lbmovie.querySelector('.lb-director');
        let director = "";
        data.forEach(({fname, lname}) => {
          director += `${fname} ${lname}, `;
        });
        director = director.replace(/, $/, '');
        lbDirector.innerHTML = director;
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  // get production company of a movie
  function getMovieCompany(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getRelation&tbl=movie&tbl2=company&tbl3=movie_company&col=id&col2=id&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
        let lbCompany = lbmovie.querySelector('.lb-company');
        let company = "";
        data.forEach(({name}) => {
          company += `${name}, `;
        });
        company = company.replace(/, $/, '');
        lbCompany.innerHTML = company;
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  // get parental rating (US and CA) of a movie
  function getMovieRating(movieId) {
    let url = 'admin/phpscripts/caller.php?caller_id=getForeign&tbl=movie&tbl2=rating&col=id&col2=id&col3=rating&id=' + movieId;
    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        let lbRatingUs = lbmovie.querySelector('.lb-rating-us');
        let lbRatingCa = lbmovie.querySelector('.lb-rating-ca');
        data.forEach(({name_us, name_ca, icon_us, icon_ca}) => {
          lbRatingUs.src = `images/${icon_us}`;
          lbRatingUs.alt = name_us;
          if(icon_ca) {
            lbRatingCa.src = `images/${icon_ca}`;
            lbRatingCa.alt = name_ca;
          }
          else {
            lbRatingCa.src = '';
            lbRatingCa.alt = '';
          }
        });
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  function openMovieDetails(evt) {
    evt.currentTarget.classList.add('selected');
    let lbContent = lbmovie.querySelector('#lbmovie-content');
    let id = evt.currentTarget.dataset.id;
    getMovieInfo(id);
    getMovieGenre(id);
    getMovieCast(id);
    getMovieDirector(id);
    getMovieCompany(id);
    getMovieRating(id);
    let closeBtn = lbmovie.querySelector('#lbmovie-close');
    closeBtn.addEventListener('click', closeMovieDetails, false);
    lbmovie.classList.add('selected');
  }

  function closeMovieDetails() {
    lbmovie.classList.remove('selected');
    movies.forEach((movie) => {
      movie.classList.remove('selected');
    });
  }

  movies.forEach((movie) => {
    movie.addEventListener('click', openMovieDetails, false);
  });
})();
