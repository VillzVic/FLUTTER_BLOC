class ItemModel {
  int _page;
  int _total_results;
  int _total_pages;
  List<_Result> _results = [];

  int get page => _page;

  int get total_results => _total_results;

  List<_Result> get results => _results;

  int get total_pages => _total_pages;

  ItemModel.fromJson(Map json) {
    List<_Result> _tempList = [];

    print(json['results'].length);
    _page = json['page'];
    _total_pages = json['total_pages'];
    _total_results = json['total_results'];
    json['results'].forEach((json) {
      _Result _result = new _Result.fromMap(json);
      _tempList.add(_result);
    });
    _results = _tempList;
  }
}

class _Result {
  int _vote_count;
  int _id;
  bool _video;
  var _vote_average;
  String _title;
  double _popularity;
  String _poster_path;
  String _original_language;
  String _original_title;
  List<int> _genre_ids = [];
  String _backdrop_path;
  bool _adult;
  String _overview;
  String _release_date;

  _Result.fromMap(Map result) {
    _vote_count = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _vote_average = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];
    _backdrop_path = result['backdrop_path'];
    _adult = result['adult'];
    _overview = result['overview'];
    _release_date = result['release_date'];
    result['genre_ids'].forEach((list) {
      _genre_ids.add(list);
    });
  }

  String get release_date => _release_date;

  String get overview => _overview;

  bool get adult => _adult;

  String get backdrop_path => _backdrop_path;

  List<int> get genre_ids => _genre_ids;

  String get original_title => _original_title;

  String get original_language => _original_language;

  String get poster_path => _poster_path;

  double get popularity => _popularity;

  String get title => _title;

  get vote_average => _vote_average;

  bool get video => _video;

  int get id => _id;

  int get vote_count => _vote_count;
}
