import 'package:flutter/material.dart';
import 'package:instagramflutter/app_context.dart';
import 'package:instagramflutter/widgets/bottomsheet/bottom_sheet_action_widget.dart';

import 'bottom_sheet_action.dart';

class BottomSheetScrollable extends StatelessWidget {

  final List<BottomSheetAction> actions;
  final ScrollController scrollController;

  BottomSheetScrollable({this.actions, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 8
            ),
            child: Container(
              width: 64,
              height: 8,
              decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Theme.of(context).dialogBackgroundColor
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                  ),
                  color: Theme.of(context).dialogBackgroundColor
              ),
              child: Material(
                color: Theme.of(context).dialogBackgroundColor,
                child: SafeArea(
                    child: ListView(
                      shrinkWrap: true,
                      controller: scrollController,
                      children: actions.map((action) => BottomSheetActionWidget(action))
                          .toList(),
                    )
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
