import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        'assets/sample/search_demo1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
