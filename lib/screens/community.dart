import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/social.dart';
import 'package:flutter_demo/screens/topic.dart';

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
        backgroundColor: Color(0xfff5f7f9),
        body: Column(
          children: [
            SizedBox(height: 6),
            Center(
              child: CupertinoSlidingSegmentedControl(
                  children: {
                    0: Text(
                      '话题广场',
                      style: TextStyle(
                          fontSize: 16,
                          color: slide == 0 ? Colors.black : Colors.grey),
                    ),
                    1: Text(
                      '我的圈子',
                      style: TextStyle(
                          fontSize: 16,
                          color: slide == 1 ? Colors.black : Colors.grey),
                    )
                  },
                  groupValue: slide,
                  onValueChanged: (value) {
                    setState(() {
                      slide = value;
                    });
                  }),
            ),
            SizedBox(height: 6),
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
