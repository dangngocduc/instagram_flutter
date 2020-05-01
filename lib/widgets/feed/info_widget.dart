import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('24 likes'),
          Text('dangngocduc \"Photo by Đặng Ngọc Đức in Xã Lạc Vệ. Huyện Tiên Du Tỉnh Bắc Ninh. Image may contain: plant, flower, outdoor and nature\"')
        ],
      ),
    );
  }
}
