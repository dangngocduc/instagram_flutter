import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'content_input_widget.dart';

class StoryPage extends StatefulWidget {
  static const ROUTE_NAME = 'StoryPage';
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  static const TAG = 'StoryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(8)
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/sample/search_demo1.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              )
          ),
          ContentInputWidget()
        ],
      ),
    );
  }
}
