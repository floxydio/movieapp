import 'package:flutter/material.dart';
import 'package:moviefrontend/config/isaar_service.dart';
import 'package:moviefrontend/db_lite/movie_favorite.dart';

class MovieScreenSave extends StatefulWidget {
  const MovieScreenSave({super.key});

  @override
  State<MovieScreenSave> createState() => _MovieScreenSaveState();
}

class _MovieScreenSaveState extends State<MovieScreenSave> {
  List<MovieFavorite> movieFavoriteSave = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    movieFavoriteSave.clear();
    movieFavoriteSave.addAll(await IsaarService().movieFavoriteData());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
          child: ListView.builder(
              itemCount: movieFavoriteSave.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: ListTile(
                    leading: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Image.network(movieFavoriteSave[i].urlFilm!,
                            fit: BoxFit.cover)),
                    title: Text(movieFavoriteSave[i].judulFilm!),
                    trailing: InkWell(
                        onTap: () async {
                          await IsaarService()
                              .deleteDataMovieById(movieFavoriteSave[i].id)
                              .then((value) => {});
                          getData();
                        },
                        child: const Icon(Icons.delete)),
                  ),
                );
              })),
    ));
  }
}
