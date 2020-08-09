import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ActivityItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                maxRadius: 16,
                  backgroundImage : AssetImage('assets/sample/ic_avatar_1.jpg')
              ),
              Expanded(child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8
                  ),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'ronsbikes, dangngocduc',
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold
                            )),
                        TextSpan(text: ' liked your photo.', style: Theme.of(context).textTheme.subtitle1),
                        TextSpan(text: ' 2h', style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.56)
                        ))
                      ]
                  ))
              )),
              Container(
                width: 56,
                height: 56,
                decoration: ShapeDecoration(
                    image: DecorationImage(image: AssetImage('assets/sample/search_demo1.jpg'), fit: BoxFit.cover),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))
                    )
                ),
              )
            ],
          ),
        ),
        onTap: () {
        },
      )
    );
  }
}
