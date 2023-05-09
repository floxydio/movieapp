import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviefrontend/features/home/viewmodel/category_bloc/category_event.dart';
import 'package:moviefrontend/repository/movie.repo.dart';

class CategoryCubit extends Cubit<CategoryEvent> {
  CategoryCubit() : super(CategoryStarted());

  void getCategory() async {
    emit(CategoryLoading());
    var response = await MovieRepositoryList().getCategories();
    if (response.genres!.isNotEmpty) {
      emit(CategoryLoaded(event: response.genres!));
    } else {
      emit(CategoryError());
    }
  }
}
