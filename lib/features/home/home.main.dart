import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviefrontend/features/home/screens/home.screen.dart';
import 'package:moviefrontend/features/home/viewmodel/category_bloc/category_state.dart';
import 'package:moviefrontend/features/home/viewmodel/movie_bloc/movie_state.dart';
import 'package:moviefrontend/features/home/viewmodel/toprated_bloc/toprated_state.dart';
import 'package:moviefrontend/repository/movie.repo.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late MovieRepositoryList movieRepositoryList;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => CategoryCubit(movieRepo: movieRepositoryList)),
        BlocProvider(
          create: (context) => MovieCubit(movieRepo: movieRepositoryList),
        ),
        BlocProvider(
            create: (context) => TopRatedCubit(movieRepo: movieRepositoryList))
      ],
      child: const HomeScreen(),
    );
  }
}
