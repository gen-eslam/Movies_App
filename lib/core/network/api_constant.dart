class ApiConstant{
  static const String baseurl ='https://api.themoviedb.org/3/';
  static const String apiKey = 'ccb919d1ff97aa9d0f4be142f68067e1';
  static const String nowPlayingMoviesPath = '$baseurl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath = '$baseurl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath = '$baseurl/movie/top_rated?api_key=$apiKey';


}