import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  static const ROUTE_NAME = 'SignInPage';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static const TAG = 'SignInPage';
  ResultFuture<bool> singingFuture;
  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Scaffold(
      body: IgnorePointer(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              children: [
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                SvgPicture.asset(
                  'assets/icons/ic_instagram.svg',
                  color: Theme.of(context).colorScheme.onBackground,
                  height: 32,
                ),
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                Text(
                  'Sign in and use more feature',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 64,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email or username',
                    border: inputBorder,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    filled: true,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: inputBorder,
                      focusedBorder: inputBorder,
                      enabledBorder: inputBorder,
                      filled: true,
                      contentPadding: EdgeInsets.all(8)),
                  obscureText: true,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  child: Container(
                    child: (singingFuture == null || singingFuture.isComplete)
                        ? Text(
                            'Sign in',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          )
                        : CupertinoActivityIndicator(),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        gradient: LinearGradient(colors: [
                          Color(0xFF405de6),
                          Color(0xFF833ab4),
                          Color(0xFFe1306c),
                        ])),
                  ),
                  onTap: () {
                    setState(() {
                      singingFuture = context
                          .read<AuthBloc>()
                          .signIn('username', 'password');
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Forgot for login details? get help signing in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 10),
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                Container(
                  child: Text(
                    'Don\'t have an account? sign up',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
              ],
            ),
          ),
        ),
        ignoring: singingFuture != null && !singingFuture.isComplete,
      ),
    );
  }
}
