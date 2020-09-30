import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer' as developer;

import 'package:tuple/tuple.dart';

class BottomNavigationItem extends StatefulWidget {
  static const ROUTE_NAME = 'BottomNavigationItem';

  final Tuple2<String, String> icon;
  final VoidCallback onPress;
  final bool isSelected;
  BottomNavigationItem(this.icon, this.isSelected, {this.onPress});

  @override
  _BottomNavigationItemState createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  static const TAG = 'BottomNavigationItem';
  @override
  Widget build(BuildContext context) {
    developer.log('build', name: TAG);
    return InkResponse(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8
        ),
        child: kIsWeb ? Image.network(
          widget.isSelected ? widget.icon.item2 : widget.icon.item1,
          color: Theme.of(context).colorScheme.onPrimary,
        ) : SvgPicture.asset(
          widget.isSelected ? widget.icon.item2 : widget.icon.item1,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      onTap: widget.onPress,
    );
  }
}
