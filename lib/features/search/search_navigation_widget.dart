import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SearchNavigationWidget extends StatefulWidget {
  static const ROUTE_NAME = 'SearchNavigationWidget';
  @override
  _SearchNavigationWidgetState createState() => _SearchNavigationWidgetState();
}

class _SearchNavigationWidgetState extends State<SearchNavigationWidget> {
  static const TAG = 'SearchNavigationWidget';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.search),
      title: Text('Search'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.leak_add),
          onPressed: (){},
        )
      ],

    );
  }
}
