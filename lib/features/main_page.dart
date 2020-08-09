import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagramflutter/features/bottom_nav/bottom_nav_page.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/camera/camera_pge.dart';
import 'package:instagramflutter/features/direct/direct_page.dart';

import 'account/account_page.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = 'MainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const TAG = 'MainPage';
  PageController _pageController;
  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          CameraPge(),
          BottomNavPage(),
          DirectPage(),
        ],
      ),
    );
  }
}
