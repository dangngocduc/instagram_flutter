import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramflutter/widgets/bottomsheet/bottom_sheet_scrollable.dart';

import 'widgets/bottomsheet/bottom_sheet_action.dart';

extension AppContext on BuildContext {
  static const TAG = 'AppContext';

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;


  Future<BottomSheetAction> showBottomSheet(List<BottomSheetAction> actions) {
    return showModalBottomSheet(
        context: this,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return DraggableScrollableSheet(
              expand: false,
              builder: (context, scrollController) {
                return BottomSheetScrollable(
                  actions: actions,
                  scrollController: scrollController,
                );
              }
          );
        }
    );
  }
}