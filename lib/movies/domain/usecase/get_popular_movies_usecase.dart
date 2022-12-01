import 'package:dartz/dartz.dart';
import 'package:movieapp/movies/domain/entities/movie.dart';
import 'package:movieapp/movies/domain/repository/base_movies_repositorys.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUsesCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUsesCase(this.baseMoviesRepository);

  Future<Either<Failure,List<Movie>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
