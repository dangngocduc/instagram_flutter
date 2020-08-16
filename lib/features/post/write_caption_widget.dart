import 'package:flutter/material.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

class WriteCaptionWidget extends StatefulWidget {
  static const ROUTE_NAME = 'WriteCaptionWidget';
  @override
  _WriteCaptionWidgetState createState() => _WriteCaptionWidgetState();
}

class _WriteCaptionWidgetState extends State<WriteCaptionWidget> {
  static const TAG = 'WriteCaptionWidget';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(context.watch<AuthBloc>().user.asValue.value.avatar),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write a caption',
                    hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Theme.of(context).hintColor
                    )
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
