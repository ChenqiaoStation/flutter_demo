import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/social/index.dart';
import 'package:flutter_demo/screens/topic/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityPage extends StatefulWidget {
  CommunityPage({super.key});
  @override
  State<StatefulWidget> createState() => CommunityState();
}

class CommunityState extends State<CommunityPage>
    with AutomaticKeepAliveClientMixin {
  List list = List.generate(10, (index) => index);
  int? slide = 0;
  onItemPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Center(
          child: CupertinoSlidingSegmentedControl(
              children: {
                0: Text(
                  '话题广场',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: slide == 0 ? Colors.black : Colors.grey),
                ),
                1: Text(
                  '我的圈子',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: slide == 1 ? Colors.black : Colors.grey),
                )
              },
              groupValue: slide,
              onValueChanged: (value) {
                setState(() {
                  slide = value;
                });
              }),
        )),
        body: Column(
          children: [
            Expanded(
                child: IndexedStack(
              children: [
                TopicPage(),
                SocialPage(),
              ],
              index: slide,
            ))
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;
}
