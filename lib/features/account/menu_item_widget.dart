import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String content;

  MenuItemWidget({@required this.title, @required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('$title', style: Theme.of(context).textTheme.subtitle2.copyWith(
            fontWeight: FontWeight.w800
          ),),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text('$content', style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 13
            ),),
          )
        ],
      ),
    );
  }
}
