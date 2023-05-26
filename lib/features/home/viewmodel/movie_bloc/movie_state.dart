import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviefrontend/features/home/viewmodel/movie_bloc/movie_event.dart';
import 'package:moviefrontend/repository/movie.repo.dart';

class MovieCubit extends Cubit<MovieEvent> {
  final MovieRepositoryList movieRepo;
  MovieCubit({required this.movieRepo}) : super(MovieStarted());

  void getMovie() async {
    emit(MovieLoading());
    var response = await movieRepo.getMovieUpcoming();
    if (response.results!.isNotEmpty) {
      emit(MovieLoaded(movie: response.results!));
    } else {
      emit(MovieError());
    }
  }
}
