import 'dart:developer' as developer;

import 'package:instagramflutter/data/model/user.dart';

class Conversation {
  static const TAG = 'Conversation';

  User user;

  bool isActive;

  DateTime lastActive;

  Conversation({
    required this.user, required this.isActive, required this.lastActive
  });

}