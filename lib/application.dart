import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:instagramflutter/data/bloc/chat_bloc.dart';
import 'package:provider/provider.dart';

import 'data/bloc/local_media_bloc.dart';
import 'features/authorization_state_page.dart';

import 'dart:developer' as developer;

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
    developer.log('initState', name: TAG);
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) {
                return AuthBloc();
              },
        ),
        ChangeNotifierProvider(
            create: (context) {
              return LocalMediaBloc();
            },
            lazy: false,
        ),
        ChangeNotifierProvider(
            create: (context) {
              return ChatBloc();
            },
            lazy: false,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.white,
            accentColor: Colors.black,
            accentColorBrightness: Brightness.dark,
            toggleableActiveColor: Colors.blue[900],
            bottomAppBarColor: Colors.white,
            accentIconTheme: IconThemeData(
                color: Colors.black
            ),
            appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              elevation: 1
            ),
            primaryColorBrightness: Brightness.light,
            primaryColorDark: Colors.black87,
            primaryIconTheme: IconThemeData(
                color: Colors.black
            ),
            brightness: Brightness.light,
            cardColor: Colors.white,
            backgroundColor: Colors.grey[200],
            dialogBackgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
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
                ),
                bodyText2:  ThemeData.light().textTheme.bodyText2.copyWith(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                ),
                bodyText1:  ThemeData.light().textTheme.bodyText1.copyWith(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                )
            ))
        ),
        darkTheme: ThemeData.dark().copyWith(
            primaryColor: Colors.black,
            accentColor: Colors.white,
            accentColorBrightness: Brightness.light,
            toggleableActiveColor: Colors.blue[900],
            bottomAppBarColor: Colors.black87,
            accentIconTheme: IconThemeData(
                color: Colors.white
            ),
            cardColor: Color(0xFF121212),
            backgroundColor: Colors.black54,
            dialogBackgroundColor: Color(0xFF121212),
            scaffoldBackgroundColor: Color(0xFF121212),
            colorScheme: ColorScheme.dark(
                onPrimary: Colors.white,
                surface: Colors.black
            ),
            canvasColor: Colors.black,
            primaryTextTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
            accentTextTheme: GoogleFonts.latoTextTheme(ThemeData.dark().accentTextTheme),
            textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme.copyWith(
                caption: ThemeData.dark().textTheme.caption.copyWith(
                    color: Colors.white54,
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                ),
              bodyText2:  ThemeData.dark().textTheme.bodyText2.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
              bodyText1:  ThemeData.dark().textTheme.bodyText1.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400
              )
            ))
        ),
        themeMode: ThemeMode.light,
        home: AuthorizationStatePage(),
      ),
    );
  }
}