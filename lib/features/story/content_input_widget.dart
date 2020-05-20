import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/res/icons_app.dart';

const _kHeightInput = 48.0;

class ContentInputWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ContentInputWidget';
  @override
  _ContentInputWidgetState createState() => _ContentInputWidgetState();
}

class _ContentInputWidgetState extends State<ContentInputWidget> {
  static const TAG = 'ContentInputWidget';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Material(
        color: Colors.black,
        child: Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  shape: CircleBorder(
                    side: Divider.createBorderSide(context, color: Colors.white)
                  ),
                ),
                child: Icon(Icons.camera_alt, color: Colors.white,),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      decoration: ShapeDecoration(
                          shape: StadiumBorder(
                              side: Divider.createBorderSide(context, color: Colors.white)
                          ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Send message',
                            hintStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white54
                            ),
                            suffixIcon: Icon(Icons.insert_emoticon, color: Colors.white,)
                        ),
                      ),
                    )
                  )
              ),
              IconButton(
                  icon: SvgPicture.asset(IconsApp.icSend, color: Colors.white),
                  onPressed: (){}),
              IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
