import 'package:flutter/material.dart';
import 'package:instagramflutter/data/bloc/local_media_bloc.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/features/explore/explore_page.dart';
import 'package:instagramflutter/features/post/setting_post_page.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  static const ROUTE_NAME = 'PostPage';
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  static const TAG = 'PostPage';
  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black54
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPostPage()));
              },
              child: Text('Next', style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(
                color: Colors.blue
              ),))
        ],
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.grey,
              child: Stack(
                children: [
                  Positioned.fill(child: Image.asset(
                    'assets/sample/search_demo1.jpg', 
                    fit: BoxFit.cover,)),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            child: IconButton(
                                icon: Icon(Icons.zoom_out_map, size: 16, color: Colors.white,),
                                onPressed: (){}),
                            decoration: decoration
                          ),
                          Expanded(child: Container()),
                          Container(
                            child: IconButton(
                                icon: Icon(Icons.camera, size: 16, color: Colors.white),
                                onPressed: (){}),
                              decoration: decoration

                          ),
                          SizedBox(width: 16,),
                          Container(
                            child: IconButton(
                                icon: Icon(Icons.format_shapes, size: 16, color: Colors.white),
                                onPressed: (){}),
                              decoration: decoration
                          ),
                          SizedBox(width: 16,),
                          Container(
                            child: IconButton(
                                icon: Icon(Icons.content_copy, size: 16, color: Colors.white),
                                onPressed: (){}),
                              decoration: decoration

                          )
                        ],
                      ),
                    ),
                    bottom: 0,
                    left: 0,
                    right: 0,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2
                ),
                itemCount: context.watch<LocalMediaBloc>().files.length*2,
                itemBuilder: (context, index) {
                  return InkResponse(
                    child: Image.asset(context.watch<LocalMediaBloc>().files[index%8], fit: BoxFit.cover,),
                    onTap: () {
//                      Navigator.of(context).push(
//                          MaterialPageRoute(builder: (context) => ExplorePage())
//                      );
                    },
                  );
                })
          )
        ],
      ),
    );
  }
}
