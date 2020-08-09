import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/home/home_page.dart';

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
        return MaterialPageRoute(builder: (context) => HomePage());
      },
    );
  }
}
