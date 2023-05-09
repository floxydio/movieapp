import 'package:equatable/equatable.dart';
import 'package:moviefrontend/models/movie.models.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class MovieStarted extends MovieEvent {}

class MovieLoading extends MovieEvent {}

class MovieLoaded extends MovieEvent {
  final List<ResultsMovie> movie;

  const MovieLoaded({required this.movie});
  @override
  List<Object> get props => [movie];
}

class MovieError extends MovieEvent {}
