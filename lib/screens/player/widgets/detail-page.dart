import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/player/widgets/chapter.dart';
import 'package:flutter_demo/screens/player/widgets/chapters.dart';
import 'package:flutter_demo/screens/player/widgets/series.dart';

class DetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // decoration: BoxDecoration(color: Colors.greenAccent),
      child: ListView(padding: EdgeInsets.all(0), children: [
        SizedBox(
          height: 12,
        ),
        Chapter(onAuthorPress: () {}, onLikePress: () {}),
        SizedBox(
          height: 12,
        ),
        Series(onAuthorPress: () {}, onLikePress: () {}),
        SizedBox(
          height: 12,
        ),
        Chapters(onAuthorPress: () {}, onLikePress: () {}),
        SizedBox(
          height: 12,
        ),
      ]),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
