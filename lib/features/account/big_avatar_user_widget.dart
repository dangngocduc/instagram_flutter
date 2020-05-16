import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BigAvatarUserWidget extends StatefulWidget {
  static const ROUTE_NAME = 'BigAvatarUserWidget';
  @override
  _BigAvatarUserWidgetState createState() => _BigAvatarUserWidgetState();
}

class _BigAvatarUserWidgetState extends State<BigAvatarUserWidget> {
  static const TAG = 'BigAvatarUserWidget';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: CircleAvatar(
            backgroundImage: AssetImage('assets/sample/ic_avatar_1.jpg'),
          )),
          Positioned(
            child: ClipOval(
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.blueAccent,
                  shape: CircleBorder(
                    side: Divider.createBorderSide(context, width: 2, color: Theme.of(context).cardColor),
                  )
                ),
                padding: EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Icon(Icons.add, size: 12, color: Colors.white,),
              ),
            ),
            right: 0,
            bottom: 0,
          )
        ],
      ),
    );
  }
}
