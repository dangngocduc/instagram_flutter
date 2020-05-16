import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ).copyWith(
        right: 0
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage('https://instagram.fsgn2-2.fna.fbcdn.net/v/t51.2885-19/s320x320/75223535_449897509288875_4922685218806038528_n.jpg?_nc_ht=instagram.fsgn2-2.fna.fbcdn.net&_nc_ohc=5_s3zUFKYtwAX8Hylrr&oh=6646fdb0ba4dc349ff4b064304dd147e&oe=5ED5CA0C'),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DefaultTextStyle(
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.w600
                      ),
                      child: Text('dangngocduc'),),
                  Text('Hà Nội, Viêt Nam', style: Theme.of(context).textTheme.caption,)
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
