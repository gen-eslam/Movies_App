import 'package:movieapp/movies/domain/entities/movie.dart';
import 'package:movieapp/movies/domain/repository/base_movies_repositorys.dart';

class GetNowPlayingMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

 Future<List<Movie>> execute()async{
    return await baseMoviesRepository.getNowPlayingMovies();
  }

}