import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:moviefrontend/db_lite/movie_favorite.dart';
import 'package:path_provider/path_provider.dart';

class IsaarService {
  late Future<Isar> db;

  IsaarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [MovieFavoriteSchema],
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<List<MovieFavorite>> movieFavoriteData() async {
    final isar = await db;

    var data = await isar.movieFavorites.where(distinct: true).findAll();
    return data;
  }

  Future<List<MovieFavorite>> findDuplicate(final int id) async {
    final isar = await db;

    var data = await isar.movieFavorites.filter().idEqualTo(id).findAll();
    return data;
  }

  Future<void> createDataMovie(MovieFavorite data) async {
    final isar = await db;

    final form = MovieFavorite()
      ..idFilm = data.idFilm
      ..judulFilm = data.judulFilm
      ..urlFilm = data.urlFilm;

    await isar.writeTxn(() async {
      await isar.movieFavorites.put(form).then((value) {
        if (kDebugMode) {
          print("Success Insert");
        }
      });
    });
  }

  Future<bool> deleteDataMovieById(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.movieFavorites.delete(id).then((value) {
        if (value) {
          return true;
        }
      });
    });

    return false;
  }
}
