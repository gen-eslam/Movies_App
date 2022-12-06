import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../usecase/get_movies_details_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure,List<Movie>>> getPopularMovies();

  Future<Either<Failure,List<Movie>>> getTopRatedMovies();

  Future<Either<Failure,MovieDetails>> getMoviesDetails(MovieDetailsParameters movieDetailsParameters);
}
