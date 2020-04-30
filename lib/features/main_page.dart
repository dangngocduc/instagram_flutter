import 'package:flutter/material.dart';
import 'package:instagramflutter/features/bottom_nav/bottom_nav_page.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/camera/camera_pge.dart';
import 'package:instagramflutter/features/direct/direct_page.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = 'MainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const TAG = 'MainPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          CameraPge(),
          BottomNavPage(),
          DirectPage()
        ],
      ),
    );
  }
}
