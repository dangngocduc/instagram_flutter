import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as developer;

import 'package:google_fonts/google_fonts.dart';
import 'package:instagramflutter/res/icons_app.dart';

class HeaderWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Container(
          child: Row(
            children: <Widget>[
              IconButton(icon: SvgPicture.asset(IconsApp.icCamera,
                color: Theme.of(context).colorScheme.onPrimary,), onPressed: (){}),
              Expanded(child: Container(
                child: SvgPicture.asset(IconsApp.logoInsta,
                  color: Theme.of(context).colorScheme.onPrimary,),
              )),
              IconButton(icon: SvgPicture.asset(IconsApp.icSend,
                color: Theme.of(context).colorScheme.onPrimary,), onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
