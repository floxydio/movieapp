import 'package:flutter/material.dart';
import 'package:moviefrontend/features/home/viewmodel/category_bloc/category_state.dart';
import 'package:moviefrontend/features/home/viewmodel/movie_bloc/movie_event.dart';
import 'package:moviefrontend/features/home/viewmodel/movie_bloc/movie_state.dart';
import 'package:moviefrontend/features/home/viewmodel/toprated_bloc/toprated_event.dart';
import 'package:moviefrontend/features/home/viewmodel/toprated_bloc/toprated_state.dart';
import 'package:moviefrontend/features/home/widgets/header_home.widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().getCategory();
    context.read<MovieCubit>().getMovie();
    context.read<TopRatedCubit>().getTopRated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(),
        const SizedBox(height: 20),
        // BlocBuilder<CategoryCubit, CategoryEvent>(builder: (context, state) {
        //   if (state is CategoryLoading) {
        //     return const Center(child: CircularProgressIndicator());
        //   } else if (state is CategoryLoaded) {
        //     return Category(
        //       event: state.event,
        //     );
        //   } else if (state is CategoryError) {
        //     return const Center(child: Text("Error"));
        //   } else {
        //     return const Center(child: Text("Error"));
        //   }
        // }),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("Find Movies, TV shows\nand more ...",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),

        const SizedBox(height: 20),
        Container(
          height: 40,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                fillColor: Colors.grey[200],
                filled: true,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(Icons.search, size: 15),
                hintText: "Search movies...",
                border: const OutlineInputBorder()),
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text("\u{1F3A5} Upcoming Movies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 20),
        BlocBuilder<MovieCubit, MovieEvent>(builder: (context, state) {
          if (state is MovieLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MovieLoaded) {
            return upcomingWidget(state);
          } else if (state is MovieError) {
            return const Center(child: Text("Error"));
          } else {
            return const Center(child: Text("Error"));
          }
        }),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 20),
          child: Text("\u{1F525} Trending Movies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 20),
        BlocBuilder<TopRatedCubit, TopRatedEvent>(builder: (context, state) {
          if (state is TopRatedLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TopRatedLoaded) {
            return trendWidget(state);
          } else {
            return const Center(child: Text("Error"));
          }
        })
      ],
    ))));
  }

  SingleChildScrollView upcomingWidget(MovieLoaded state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          for (int i = 0; i < state.movie.length; i++)
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500${state.movie[i].posterPath}",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 140,
                    child: Text(
                      state.movie[i].title.toString(),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Text(
                      state.movie[i].releaseDate.toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 140,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Text(
                          state.movie[i].voteAverage.toString(),
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}

SingleChildScrollView trendWidget(TopRatedLoaded state) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    child: Row(
      children: [
        for (int i = 0; i < state.topRated.length; i++)
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.network(
                    "https://image.tmdb.org/t/p/w500${state.topRated[i].posterPath}",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 140,
                  child: Text(
                    state.topRated[i].title.toString(),
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: Text(
                    state.topRated[i].releaseDate.toString(),
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 140,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Text(
                        state.topRated[i].voteAverage.toString(),
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    ),
  );
}
