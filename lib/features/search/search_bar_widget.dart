import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SearchBarWidget extends StatefulWidget implements PreferredSizeWidget {
  static const ROUTE_NAME = 'SearchBarWidget';
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  static const TAG = 'SearchBarWidget';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SafeArea(child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none),
                ),
              ),
            ),
            Text("search")
          ],
        ),
      )),
    );
  }
}
