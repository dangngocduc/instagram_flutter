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
                backgroundImage: NetworkImage('https://scontent-hkg4-1.cdninstagram.com/v/t51.2885-19/s150x150/75223535_449897509288875_4922685218806038528_n.jpg?_nc_ht=scontent-hkg4-1.cdninstagram.com&_nc_ohc=GyxSNoKXAS8AX_2Hl-b&oh=cf60815eb1effb8d4cc7e68dfc3d844e&oe=5EE2BB7C'),
              ),
              Expanded(child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8
                  ),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'ronsbikes, dangngocduc and world_wildlife', style: Theme.of(context).textTheme.subtitle2),
                        TextSpan(text: ' Liked your photo.', style: Theme.of(context).textTheme.bodyText2),
                        TextSpan(text: ' 2h', style: Theme.of(context).textTheme.bodyText2.copyWith(
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
