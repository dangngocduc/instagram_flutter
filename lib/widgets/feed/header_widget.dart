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
              backgroundImage : AssetImage('assets/sample/ic_avatar_1.jpg')
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
