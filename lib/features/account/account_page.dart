import 'package:flutter/material.dart';
import 'package:instagramflutter/features/account/app_bar_account.dart';
import 'package:instagramflutter/features/account/tab_bar_sliver_persistent_header_delegate.dart';
import 'package:instagramflutter/app_context.dart';
import 'package:instagramflutter/widgets/bottomsheet/bottom_sheet_action.dart';
import 'dart:developer' as developer;

import 'header_account_widget.dart';

class AccountPage extends StatefulWidget {
  static const ROUTE_NAME = 'AccountPage';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  static const TAG = 'AccountPage';

  VoidCallback _onShowMenu;

  @override
  void initState() {
    super.initState();
    _onShowMenu = () {
      context.showBottomSheet(
          [
            BottomSheetAction(iconData: Icons.archive, title: 'Archive', id: 1),
            BottomSheetAction(iconData: Icons.show_chart, title: 'Insights', id: 2),
            BottomSheetAction(iconData: Icons.history, title: 'Your activity', id: 3),
            BottomSheetAction(iconData: Icons.scanner, title: 'QR Code', id: 4),
            BottomSheetAction(iconData: Icons.bookmark_border, title: 'Saved', id: 5),
            BottomSheetAction(iconData: Icons.group_add, title: 'Discover People', id: 6),
          ]
      );
    };
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                AppBarAccount(_onShowMenu),
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
                          crossAxisCount: 3,
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
