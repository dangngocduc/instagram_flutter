import 'package:flutter/material.dart';
import 'package:instagramflutter/features/search/search_bar_widget.dart';
import 'dart:developer' as developer;

import 'activity_item_widget.dart';

class ActivityPage extends StatefulWidget {
  static const ROUTE_NAME = 'ActivityPage';
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  static const TAG = 'ActivityPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        centerTitle: false,
      ),
      body: RefreshIndicator(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => ActivityItemWidget(),
            itemCount: 20,
          ),
          onRefresh: () async {}),
    );
  }
}
