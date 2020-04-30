import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BottomNavigationItem extends StatefulWidget {
  static const ROUTE_NAME = 'BottomNavigationItem';

  final Widget icon;

  BottomNavigationItem(this.icon);

  @override
  _BottomNavigationItemState createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  static const TAG = 'BottomNavigationItem';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8
      ),
      child: IconTheme(
        child: widget.icon,
        data: Theme.of(context).accentIconTheme,
      ),
    );
  }
}
