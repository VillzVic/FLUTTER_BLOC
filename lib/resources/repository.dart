import 'dart:async';

import '../models/item_model.dart';
import '../models/trailer_model.dart';
import 'movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchMoviesList() => moviesApiProvider.getMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) =>
      moviesApiProvider.getTrailer(movieId);
}
