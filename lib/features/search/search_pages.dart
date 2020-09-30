import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramflutter/data/bloc/local_media_bloc.dart';
import 'package:instagramflutter/features/explore/explore_page.dart';
import 'package:instagramflutter/res/icons_app.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

import 'package:instagramflutter/widgets/chip_widget.dart';
import 'package:tuple/tuple.dart';

class SearchPages extends StatefulWidget {
  static const ROUTE_NAME = 'SearchPages';
  @override
  _SearchPagesState createState() => _SearchPagesState();
}

class _SearchPagesState extends State<SearchPages> {
  static const TAG = 'SearchPages';

  List<Tuple2<String, String>> categories = [
    Tuple2(IconsApp.icShop, 'Shop'),
    Tuple2(IconsApp.icFood, 'Food'),
    Tuple2(IconsApp.icStyle, 'Style'),
    Tuple2(IconsApp.icTravel, 'Travel'),
    Tuple2(IconsApp.icArt, 'Art'),
    Tuple2(IconsApp.icMusic, 'Music'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Search'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.leak_add),
            onPressed: (){},
          )
        ],
        bottom: PreferredSize(
            child: Container(
              height: 48,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16
                ),
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(width: 16,),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ChipWidget(
                  kIsWeb ? Image.network(
                    categories[index].item1,
                    color: Theme.of(context).colorScheme.onBackground,
                    width: 18,
                  ): SvgPicture.asset(
                    categories[index].item1,
                    color: Theme.of(context).colorScheme.onBackground,
                    width: 18,
                  ),
                  Text(categories[index].item2)
                ),
                itemCount: categories.length,
              ),
            ),
            preferredSize: Size.fromHeight(48)),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2
          ),
          itemCount: context.watch<LocalMediaBloc>().files.length*6,
          itemBuilder: (context, index) {
            return InkResponse(
              child: Image.asset(context.watch<LocalMediaBloc>().files[index%8], fit: BoxFit.cover,),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ExplorePage())
                );
              },
            );
          }),
    );

  }
}
