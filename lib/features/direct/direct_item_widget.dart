import 'package:flutter/material.dart';

import 'package:instagramflutter/data/model/chat/conversation.dart';

class DirectItemWidget extends StatelessWidget {
  final Conversation conversation;

  DirectItemWidget(this.conversation);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16
      ).copyWith(
        right: 0
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(conversation.user.avatar),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(conversation.user.fullName,
                    style: Theme.of(context).textTheme.subtitle1,),
                  Text(conversation.isActive ? 'Active now' : 'Active 1h ago',
                    style: Theme.of(context).textTheme.caption,),
                ],
              ),
            ),
          ),
          IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: (){},
          )
        ],
      ),
    );
  }
}
