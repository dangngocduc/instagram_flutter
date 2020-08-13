import 'dart:developer' as developer;

import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:instagramflutter/data/model/chat/conversation.dart';
import 'package:instagramflutter/data/model/user.dart';

class ChatBloc extends ChangeNotifier {
  static const TAG = 'ChatBloc';

  List<Conversation> conversation;

  ChatBloc() {
    //region Fake Data
    conversation = [
      Conversation(
        user: User(
            'dangngocduc.bk@gmail.com',
            'dangngocduc',
            'assets/sample/ic_avatar_1.jpg',
            'Dang Ngoc Duc'
        ),
        isActive: true,
        lastActive: DateTime.now()
      ),
      Conversation(
          user: User(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Mola Mola'
          ),          isActive: true,
          lastActive: DateTime.now()
      ),
      Conversation(
          user: User(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Hoang Anh'
          ),          isActive: true,
          lastActive: DateTime.now()
      ),
      Conversation(
          user: User(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Pencil Academy'
          ),          isActive: true,
          lastActive: DateTime.now()
      )
    ];
  }
}