import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class StoryItemWidget extends StatefulWidget {
  static const ROUTE_NAME = 'StoryItemWidget';
  @override
  _StoryItemWidgetState createState() => _StoryItemWidgetState();
}

class _StoryItemWidgetState extends State<StoryItemWidget> {
  static const TAG = 'StoryItemWidget';
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 80,
        height: 96,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 72,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipOval(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.red[500], Colors.pink],
                            )
                        ),
                        padding: EdgeInsets.all(2),
                        child: CircleAvatar(
                            radius: 34,
                            backgroundImage : NetworkImage('https://instagram.fsgn2-2.fna.fbcdn.net/v/t51.2885-19/s320x320/75223535_449897509288875_4922685218806038528_n.jpg?_nc_ht=instagram.fsgn2-2.fna.fbcdn.net&_nc_ohc=5_s3zUFKYtwAX8Hylrr&oh=6646fdb0ba4dc349ff4b064304dd147e&oe=5ED5CA0C')
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text('dangngocduc', style: Theme.of(context).textTheme.caption.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),),
            )
          ],
        ),
      ),
      fit: BoxFit.scaleDown,
    );
  }
}
