import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/widgets/feed/feed_widget.dart';

class ExplorePage extends StatefulWidget {
  static const ROUTE_NAME = 'ExplorePage';
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static const TAG = 'ExplorePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Explore'),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => FeedWidget(),
              childCount: 10
            ),
          )
        ],
      ),
    );
  }
}
