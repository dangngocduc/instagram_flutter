import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'header_widget.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(),
      body: Container(

      ),
    );
  }
}
