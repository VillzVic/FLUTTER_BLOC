import 'package:flutter/material.dart';

import 'movie_detail_bloc.dart';

export 'movie_detail_bloc.dart';

class MovieDetailBlocProvider extends InheritedWidget {
  final MovieDetailBloc
      bloc; //we want to make this accessible from any point in the tree to down the tree

  MovieDetailBlocProvider({Key key, Widget child})
      : bloc = MovieDetailBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static MovieDetailBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(MovieDetailBlocProvider)
            as MovieDetailBlocProvider)
        .bloc;
  }
}
