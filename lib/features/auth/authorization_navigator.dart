import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'signin/sign_in_page.dart';

class AuthorizationNavigator extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizationNavigator';
  @override
  _AuthorizationNavigatorState createState() => _AuthorizationNavigatorState();
}

class _AuthorizationNavigatorState extends State<AuthorizationNavigator> {
  static const TAG = 'AuthorizationNavigator';
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => SignInPage());
      },
    );
  }
}
