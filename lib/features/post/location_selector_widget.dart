import 'package:flutter/material.dart';
import 'package:instagramflutter/features/post/post_create_view_model.dart';
import 'dart:developer' as developer;

import 'package:provider/provider.dart';

class LocationSelectorWidget extends StatefulWidget {
  static const ROUTE_NAME = 'LocationSelectorWidget';
  @override
  _LocationSelectorWidgetState createState() => _LocationSelectorWidgetState();
}

class _LocationSelectorWidgetState extends State<LocationSelectorWidget> {
  static const TAG = 'LocationSelectorWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                child: Text('${context.watch<PostCreateViewModel>().locationSuggest[index]}',
                  style: Theme.of(context).textTheme.bodyText1,),
                padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16
                ),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    color: Theme.of(context).hintColor.withOpacity(0.12)
                ),
              ),
              onTap: () {
                context.read<PostCreateViewModel>().setCurrentLocation(
                    context.read<PostCreateViewModel>().locationSuggest[index]
                );
              },
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 16, height: 0,),
          itemCount: context.watch<PostCreateViewModel>().locationSuggest.length),
    );
  }
}
