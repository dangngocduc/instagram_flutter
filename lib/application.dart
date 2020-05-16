import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
        primaryColorBrightness: Brightness.light,
        primaryColorDark: Colors.black87,
        primaryIconTheme: IconThemeData(
            color: Colors.black
        ),
        brightness: Brightness.light,
        cardColor: Colors.white,
        backgroundColor: Colors.grey[200],
        scaffoldBackgroundColor: Colors.grey[200],
        colorScheme: ColorScheme.light(
            onPrimary: Colors.black
        ),
        primaryTextTheme: GoogleFonts.latoTextTheme(ThemeData.light().textTheme),
        accentTextTheme: GoogleFonts.latoTextTheme(ThemeData.light().accentTextTheme),
        textTheme: GoogleFonts.latoTextTheme(ThemeData.light().textTheme.copyWith(
            caption: ThemeData.light().textTheme.caption.copyWith(
                color: Colors.black54,
                fontSize: 10,
                fontWeight: FontWeight.w500
            )
        ))
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
        ),
        primaryTextTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
        accentTextTheme: GoogleFonts.latoTextTheme(ThemeData.dark().accentTextTheme),
        textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme.copyWith(
            caption: ThemeData.dark().textTheme.caption.copyWith(
                color: Colors.black54,
                fontSize: 10,
                fontWeight: FontWeight.w500
            )
        ))
      ),
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}