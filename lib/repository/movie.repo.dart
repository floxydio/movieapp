import 'package:moviefrontend/config/api_key.dart';
import 'package:moviefrontend/models/category.models.dart';
import 'package:dio/dio.dart';
import 'package:moviefrontend/models/movie.models.dart';

abstract class MovieRepository {
  Future<CategoryModel> getCategories();
  Future<MovieModel> getMovieUpcoming();
  Future<MovieModel> getTrending();
}

class MovieRepositoryList implements MovieRepository {
  @override
  Future<CategoryModel> getCategories() async {
    var response = await Dio().get(
        "${ApiConfig.baseUrl}/genre/movie/list?language=en",
        options: Options(
            headers: {
              "Authorization": "Bearer ${ApiConfig.key}",
              "Accept": "application/json"
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return CategoryModel.fromJson(response.data);
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  Future<MovieModel> getMovieUpcoming() async {
    var response = await Dio().get(
        "${ApiConfig.baseUrl}/movie/upcoming?language=id&page=1",
        options: Options(
            headers: {
              "Authorization": "Bearer ${ApiConfig.key}",
              "Accept": "application/json"
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return MovieModel.fromJson(response.data);
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  Future<MovieModel> getTrending() async {
    var response = await Dio().get(
        "${ApiConfig.baseUrl}/movie/top_rated?language=id&page=1",
        options: Options(
            headers: {
              "Authorization": "Bearer ${ApiConfig.key}",
              "Accept": "application/json"
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return MovieModel.fromJson(response.data);
    } else {
      throw Exception("Failed to load data");
    }
  }
}
