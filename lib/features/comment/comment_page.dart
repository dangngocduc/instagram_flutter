import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class CommentPage extends StatefulWidget {
  static const ROUTE_NAME = 'CommentPage';
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  static const TAG = 'CommentPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(),
          Container(height: kToolbarHeight)
        ],
      ),
    );
  }
}
