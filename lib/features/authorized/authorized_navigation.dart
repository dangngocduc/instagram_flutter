import 'package:flutter/material.dart';
import 'package:instagramflutter/features/comment/comment_page.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/home/home_page.dart';
import 'package:instagramflutter/features/main_page.dart';

class AuthorizedNavigation extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizedNavigation';
  @override
  _AuthorizedNavigationState createState() => _AuthorizedNavigationState();
}

class _AuthorizedNavigationState extends State<AuthorizedNavigation> {
  static const TAG = 'AuthorizedNavigation';
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (setting) {
        switch(setting.name) {
          case CommentPage.ROUTE_NAME:
            return MaterialPageRoute(
                builder: (context) => CommentPage(
                  setting.arguments
                ),
                settings: setting
            );
          default:
            return MaterialPageRoute(builder: (context) => MainPage());
        }
      },
      initialRoute: MainPage.ROUTE_NAME,
    );
  }
}
