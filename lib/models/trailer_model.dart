class TrailerModel {
  int _id;
  List<_Result> _results = [];

  TrailerModel.fromJson(Map result) {
    _id = result['id'];
    List<_Result> temp = [];
    result['results'].forEach((json) {
      _Result _result = new _Result.fromJson(json);
      temp.add(json);
    });
    _results = temp;
  }

  List<_Result> get results => _results;

  int get id => _id;
}

class _Result {
  String _id;
  String _iso_639_1;
  String _iso_3166_1;
  String _key;
  String _name;
  String _site;
  int _size;
  String _type;

  _Result.fromJson(Map result) {
    _id = result['id'];
    _iso_639_1 = result['iso_639_1'];
    _iso_3166_1 = result['iso_3166_1'];
    _key = result['key'];
    _name = result['name'];
    _site = result['site'];
    _size = result['size'];
    _type = result['type'];
  }

  String get type => _type;

  int get size => _size;

  String get site => _site;

  String get name => _name;

  String get key => _key;

  String get iso_3166_1 => _iso_3166_1;

  String get iso_639_1 => _iso_639_1;

  String get id => _id;
}
