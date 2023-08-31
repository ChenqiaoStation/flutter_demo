import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/player/widgets/chapter.dart';
import 'package:flutter_demo/screens/player/widgets/series.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
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
      ]),
    );
  }
}
