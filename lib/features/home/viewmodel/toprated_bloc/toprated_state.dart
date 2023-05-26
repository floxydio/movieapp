import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviefrontend/features/home/viewmodel/toprated_bloc/toprated_event.dart';
import 'package:moviefrontend/repository/movie.repo.dart';

class TopRatedCubit extends Cubit<TopRatedEvent> {
  final MovieRepositoryList movieRepo;

  TopRatedCubit({required this.movieRepo}) : super(TopRatedStarted());

  void getTopRated() async {
    emit(TopRatedLoading());
    var response = await MovieRepositoryList().getTrending();
    if (response.results!.isNotEmpty) {
      emit(TopRatedLoaded(topRated: response.results!));
    } else {
      emit(TopRatedError());
    }
  }
}
