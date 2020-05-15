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

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  static const TAG = 'MainPage';
  PageController _pageController;
  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    developer.log('didChangePlatformBrightness Theme.of(context).brightness: ${Theme.of(context).brightness}', name: TAG);
    if (Theme.of(context).brightness != Brightness.light) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: Colors.black,
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light
      ));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addObserver(this);
    _pageController = PageController(initialPage: 1);
    if (Theme.of(context).brightness == Brightness.light) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light
      ));
    }
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
