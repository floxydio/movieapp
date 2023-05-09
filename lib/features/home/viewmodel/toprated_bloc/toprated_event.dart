import 'package:equatable/equatable.dart';
import 'package:moviefrontend/models/movie.models.dart';

abstract class TopRatedEvent extends Equatable {
  const TopRatedEvent();

  @override
  List<Object> get props => [];
}

class TopRatedStarted extends TopRatedEvent {}

class TopRatedLoading extends TopRatedEvent {}

class TopRatedLoaded extends TopRatedEvent {
  final List<ResultsMovie> topRated;

  const TopRatedLoaded({required this.topRated});
  @override
  List<Object> get props => [topRated];
}

class TopRatedError extends TopRatedEvent {}
