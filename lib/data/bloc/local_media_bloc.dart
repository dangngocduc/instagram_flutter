import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class LocalMediaBloc extends ChangeNotifier {
  static const TAG = 'LocalMediaBloc';

  List<String> files = [];

  LocalMediaBloc() {
    for (int i = 1; i<= 8 ; i++) {
      files.add(('assets/sample/feed_$i.jpg'));
    }
  }
}