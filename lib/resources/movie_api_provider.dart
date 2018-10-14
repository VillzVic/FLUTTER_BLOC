import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'your-api-key';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> getMovieList() async {
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");

    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("failed to load posts");
    }
  }

  Future<TrailerModel> getTrailer(int movieId) async {
    final response =
        await client.get('$_baseUrl/$movieId/videos?api_key=$_apiKey');
    if (response.statusCode == 200) {
      return TrailerModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("failed to load trailers");
    }
  }
}
