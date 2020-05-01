import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/main_page.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.black
    ));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        accentColor: Colors.white,
        accentColorBrightness: Brightness.light,
        bottomAppBarColor: Colors.black87,
        accentIconTheme: IconThemeData(
          color: Colors.white
        ),
        cardColor: Color(0xFF121212),
        backgroundColor: Colors.black54,
        scaffoldBackgroundColor: Color(0xFF121212),
      ),
      home: MainPage(),
    );
  }
}
