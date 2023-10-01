const options = {
    method: 'GET',
    headers: {
      accept: 'application/json',
      Authorization: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZmFmZDllMzYzODIxZjc5Mjk1ZmYzZDE4MWVmNmRhZCIsInN1YiI6IjY1MTY1NWY0ZDQ2NTM3MDlkZjQzNmI2MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bt5fG0RiaV3cNLYR2o5psfCHTxuPldPToReYSX_U3IE'
    }
  };
  function movieList(){
      fetch('https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc', options)
      .then(response => response.json())
        .then(response => console.log(response))
        .catch(err => console.error(err));
}
    movieList()



    