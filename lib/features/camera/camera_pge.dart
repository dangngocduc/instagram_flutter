import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:google_fonts/google_fonts.dart';

class CameraPge extends StatefulWidget {
  static const ROUTE_NAME = 'CameraPge';

  final VoidCallback onClose;

  CameraPge(this.onClose);

  @override
  _CameraPgeState createState() => _CameraPgeState();
}

class _CameraPgeState extends State<CameraPge> {
  static const TAG = 'CameraPge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.close), onPressed: widget.onClose,),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Story Preview',
          style: GoogleFonts.pacificoTextTheme(Theme.of(context).textTheme).headline5,
        ),
      ),
    );
  }
}
