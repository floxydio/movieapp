import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviefrontend/features/home/viewmodel/movie_bloc/movie_event.dart';
import 'package:moviefrontend/repository/movie.repo.dart';

class MovieCubit extends Cubit<MovieEvent> {
  MovieCubit() : super(MovieStarted());

  void getMovie() async {
    emit(MovieLoading());
    var response = await MovieRepositoryList().getMovieUpcoming();
    if (response.results!.isNotEmpty) {
      emit(MovieLoaded(movie: response.results!));
    } else {
      emit(MovieError());
    }
  }
}
