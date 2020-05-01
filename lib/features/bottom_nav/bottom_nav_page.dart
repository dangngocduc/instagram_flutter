import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagramflutter/features/home/home_page.dart';
import 'package:instagramflutter/res/icons_app.dart';
import 'dart:developer' as developer;

import 'bottom_navigation_item.dart';

class BottomNavPage extends StatefulWidget {
  static const ROUTE_NAME = 'BottomNavPage';
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  static const TAG = 'BottomNavPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomePage()
        ],
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).bottomAppBarColor,
        child: SafeArea(
          child: Container(
            height: 56,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BottomNavigationItem(
                      SvgPicture.asset(IconsApp.icHome, color: Theme.of(context).accentIconTheme.color,)
                  ),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      Icon(Icons.search)
                  ),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      Icon(Icons.add_box)
                  ),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      Icon(Icons.favorite_border)
                  ),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      Icon(Icons.person_outline)
                  ),
                )
              ],
            ),
          ),
          bottom: true,
        ),
      ),
    );
  }
}
