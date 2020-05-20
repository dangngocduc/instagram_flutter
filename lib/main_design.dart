import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/story/story_item_widget.dart';

import 'features/explore/explore_page.dart';
import 'features/story/story_page.dart';

void main() {
  runApp(MyDesignTest());
}

class MyDesignTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        cardColor: Color(0xFF121212)
      ),
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: ExplorePage(),
        ),
      ),
    );
  }

}