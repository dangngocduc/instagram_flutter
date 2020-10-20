import 'package:flutter/cupertino.dart';

class BottomSheetAction {
  static const TAG = 'BottomSheetAction';

  IconData iconData;

  String title;

  int id;

  BottomSheetAction({
    @required this.iconData,
    @required this.title,
    @required int id,
  });
}