import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/feed/body_widget.dart';
import 'dart:developer' as developer;

import 'footer_widget.dart';
import 'header_widget.dart';
import 'info_widget.dart';

class FeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: Divider.createBorderSide(context)
          )
        ),
        padding: EdgeInsets.only(
            bottom: 8
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HeaderWidget(),
            BodyWidget(),
            FooterWidget(),
            InfoWidget()
          ],
        ),
      ),
    );
  }
}
