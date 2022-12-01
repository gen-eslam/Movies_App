import 'package:movieapp/movies/domain/entities/movie.dart';
import 'package:movieapp/movies/domain/repository/base_movies_repositorys.dart';

import '../data_source/movie_remote_data_source.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);


  @override
  Future<List<Movie>> getNowPlayingMovies() {
    return baseMovieRemoteDataSource.getNowPlayingMovies();

  }

  @override
  Future<List<Movie>> getPopularMovies() {
    return baseMovieRemoteDataSource.getPopularMovies();
  }

  @override
  Future<List<Movie>> getTopRatedMovies() {
    return baseMovieRemoteDataSource.getTopRatedMovies();

  }

}