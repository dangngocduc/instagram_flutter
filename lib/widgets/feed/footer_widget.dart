import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/res/icons_app.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(icon: SvgPicture.asset(IconsApp.icFavorite,
            color: Theme.of(context).colorScheme.onPrimary,), onPressed: (){}),
          IconButton(
              icon: SvgPicture.asset(
                IconsApp.icComment,
                color: Theme.of(context).colorScheme.onPrimary,),
              onPressed: (){}),
          IconButton(
              icon: SvgPicture.asset(
                IconsApp.icSend,
                color: Theme.of(context).colorScheme.onPrimary,),
              onPressed: (){}),
          Expanded(child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){}),
          ))
        ],
      ),
    );
  }
}
