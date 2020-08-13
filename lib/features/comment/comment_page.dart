import 'package:flutter/material.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

import 'comment_widget.dart';

class CommentPage extends StatefulWidget {
  static const ROUTE_NAME = 'CommentPage';

  final String feedId;

  CommentPage(this.feedId);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  static const TAG = 'CommentPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Comments'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      body: Column(
        children: <Widget>[
          CommentWidget(),
          CommentWidget(),
          CommentWidget(),
          CommentWidget(),
          CommentWidget(),
          CommentWidget(),
        ],
      ),
      bottomNavigationBar: Material(
        type: MaterialType.canvas,
        child: SafeArea(
          child: Container(
            height: kToolbarHeight,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom
            ),
            padding: EdgeInsets.only(
              left: 16,
              right: 8
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    context.watch<AuthBloc>().user.asValue.value.avatar
                  ),
                  radius: 18,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Comment as ${context.watch<AuthBloc>().user.asValue.value.username}...',
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                InkWell(
                    onTap: (){},
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8
                        ),
                      child: Text('Post', style: Theme.of(context).primaryTextTheme.bodyText2.copyWith(
                        color: Colors.blue
                      ),),
                    ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
