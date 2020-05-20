import 'package:flutter/material.dart';
import 'package:instagramflutter/features/account/app_bar_account.dart';
import 'package:instagramflutter/features/account/tab_bar_sliver_persistent_header_delegate.dart';
import 'dart:developer' as developer;

import 'header_account_widget.dart';

class AccountPage extends StatefulWidget {
  static const ROUTE_NAME = 'AccountPage';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  static const TAG = 'AccountPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                AppBarAccount(),
                SliverToBoxAdapter(
                  child: HeaderAccountWidget(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: TabBarSliverPersistentHeaderDelegate(
                      child: Container(
                        height: 48,
                        child: TabBar(
                          indicatorColor: Theme.of(context).colorScheme.onBackground,
                          tabs: [
                            Tab(icon: Icon(Icons.grid_on),),
                            Tab(icon: Icon(Icons.person_outline),)
                          ],
                        ),
                      )
                  ),
                )
              ];
            },
            body: TabBarView(
                children: [
                  GridView.builder(
                      padding: EdgeInsets.all(2),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2
                      ),
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return Image.asset('assets/sample/search_demo1.jpg', fit: BoxFit.cover,);
                      }),
                  GridView.builder(
                      padding: EdgeInsets.all(2),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2
                      ),
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return Image.asset('assets/sample/search_demo1.jpg', fit: BoxFit.cover,);
                      })
                ]
            )),
      ),
    );
  }
}
