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
          DefaultTextStyle(
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w800
              ),
              child: Text('24 likes')),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'dangngocduc', style: Theme.of(context).textTheme.subtitle2),
                  TextSpan(text: ' how to rear mount pec dec instal slideshow. Note: the hite-rite v1 dropper post makes for a great linkage point for extra strap when overloading 🚚 :: fabs chest pre order june 1st :::..',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.w400
                      ))
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
