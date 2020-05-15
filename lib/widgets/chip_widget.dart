import 'package:flutter/material.dart';
import 'dart:developer' as developer;

const _kPaddingChip = EdgeInsets.symmetric(
    vertical: 4,
    horizontal: 16
);

class ChipWidget extends StatelessWidget {
  final Widget icon;
  final Widget label;

  ChipWidget(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            side: Divider.createBorderSide(context, width: 1, color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.54)),
          ),
      ),
      padding: _kPaddingChip,
      child: Row(
        children: <Widget>[
          IconTheme(data: IconThemeData(
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary
          ), child: icon),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: DefaultTextStyle(
                style: Theme.of(context).primaryTextTheme.bodyText2.copyWith(
                  fontWeight: FontWeight.w600
                ),
                child: label),
          )
        ],
      ),
    );
  }
}
