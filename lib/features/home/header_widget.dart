import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Container(
          child: Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.camera_alt), onPressed: (){}),
              Expanded(child: Container(
                child: Text(
                  'Instagram',
                  style: GoogleFonts.pacificoTextTheme(Theme.of(context).primaryTextTheme).headline6,
                ),
              )),
              IconButton(icon: Icon(Icons.send), onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
