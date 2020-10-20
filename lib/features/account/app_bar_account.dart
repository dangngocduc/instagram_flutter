import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'app_bar_account_delegate.dart';

class AppBarAccount extends StatefulWidget {
  static const ROUTE_NAME = 'AppBarAccount';

  final VoidCallback onShowMenu;

  AppBarAccount(this.onShowMenu);

  @override
  _AppBarAccountState createState() => _AppBarAccountState();
}

class _AppBarAccountState extends State<AppBarAccount> {
  static const TAG = 'AppBarAccount';
  @override
  Widget build(BuildContext context) {
    developer.log('build [context]', name: TAG);
    return SliverPersistentHeader(
      pinned: true,
      delegate: AppBarAccountDelegate(MediaQuery.of(context).padding.top, widget.onShowMenu),
    );
  }
}
