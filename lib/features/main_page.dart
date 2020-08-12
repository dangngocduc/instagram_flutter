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
  int currentPage = 1;
  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageController = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (current) {
              currentPage = current;
            },
            children: <Widget>[
              CameraPge(() {
                _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              }),
              BottomNavPage(() {
                _pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              }),
            ],
          ),
        ),
        onWillPop: () async {
          if (currentPage == 0) {
            _pageController.animateToPage(
                1,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn);
            return false;
          } else {
            return true;
          }
        });
  }
}
