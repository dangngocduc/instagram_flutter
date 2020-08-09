import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:instagramflutter/features/auth/authorization_navigator.dart';
import 'package:instagramflutter/features/splash_page.dart';
import 'dart:developer' as developer;

import 'package:provider/provider.dart';

import 'authorized/authorized_navigation.dart';

class AuthorizationStatePage extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizationStatePage';
  @override
  _AuthorizationStatePageState createState() => _AuthorizationStatePageState();
}

class _AuthorizationStatePageState extends State<AuthorizationStatePage> {
  static const TAG = 'AuthorizationStatePage';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.light
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthBloc>(
        builder: (context, bloc, child) {
          if (bloc.user == null) {
            return SplashPage();
          } else {
            if (bloc.user.asValue.value == null) {
              return AuthorizationNavigator();
            } else {
              return AuthorizedNavigation();
            }
          }
        },
    );
  }
}
