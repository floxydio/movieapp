import 'package:equatable/equatable.dart';
import 'package:moviefrontend/models/category.models.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class CategoryStarted extends CategoryEvent {}

class CategoryLoading extends CategoryEvent {}

class CategoryError extends CategoryEvent {}

class CategoryLoaded extends CategoryEvent {
  final List<Genres> event;

  const CategoryLoaded({required this.event});

  @override
  List<Object> get props => [event];
}
