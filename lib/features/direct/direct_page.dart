import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class DirectPage extends StatefulWidget {
  static const ROUTE_NAME = 'DirectPage';
  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  static const TAG = 'DirectPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
