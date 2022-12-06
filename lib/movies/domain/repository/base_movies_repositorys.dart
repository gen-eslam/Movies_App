import 'package:dartz/dartz.dart';
import 'package:movieapp/movies/domain/usecase/get_recommendation_usecase.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../entities/recommendation.dart';
import '../usecase/get_movies_details_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMoviesDetails(
      MovieDetailsParameters movieDetailsParameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters recommendationParameters);
}
