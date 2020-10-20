import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class CommentWidget extends StatelessWidget {
  static const ROUTE_NAME = 'CommentWidget';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/sample/ic_avatar_1.jpg'),
            radius: 18,
          ),
          Expanded(child: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'dangngocduc', style: Theme.of(context).textTheme.bodyText2),
                        TextSpan(text: 'This one looks amazing', style: Theme.of(context).textTheme.bodyText1),
                      ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: DefaultTextStyle(
                        style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                        child: Row(
                          children: [
                            Text('5d'),
                            SizedBox(width: 24,),
                            Text('3 likes'),
                            SizedBox(width: 24,),
                            Text('Reply')
                          ],
                        )),
                  )
                ],
              ),
            ),
          )),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.favorite, size: 16,),
          )
        ],
      ),
    );
  }
}
