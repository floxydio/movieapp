import 'package:isar/isar.dart';

part 'movie_favorite.g.dart';

@collection
class MovieFavorite {
  Id id = Isar.autoIncrement;

  @Index(unique: true, type: IndexType.value, replace: true)
  int? idFilm;
  String? judulFilm;
  String? urlFilm;
}
