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

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        accentColorBrightness: Brightness.dark,
        bottomAppBarColor: Colors.white,
        accentIconTheme: IconThemeData(
          color: Colors.black
        ),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        ),
        primaryTextTheme: ThemeData.light().textTheme,
        brightness: Brightness.light,
        cardColor: Colors.white,
        backgroundColor: Colors.grey[200],
        scaffoldBackgroundColor: Colors.grey[200],
        colorScheme: ColorScheme.light(
            onPrimary: Colors.black
        ),

      ),
      darkTheme: ThemeData.dark().copyWith(
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
        colorScheme: ColorScheme.dark(
          onPrimary: Colors.white
        )
      ),
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}
