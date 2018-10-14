import 'package:rxdart/rxdart.dart';

import '../models/item_model.dart';
import '../resources/repository.dart';

class MovieBloc {
  final _repository = Repository();

  //get data from server and store it as a data model and pass it to the UI as stream
  final _movieFetcher = new PublishSubject<ItemModel>();

  //To pass the ItemModel object as stream we have created another method allMovies() whose return type is Observable
  Observable<ItemModel> get allMovies => _movieFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchMoviesList();
    _movieFetcher.sink.add(itemModel);
  }

  dispose() {
    _movieFetcher.close();
  }
}

final bloc = new MovieBloc();
