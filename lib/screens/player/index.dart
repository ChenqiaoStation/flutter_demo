import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/player/widgets/bottom-bar.dart';
import 'package:flutter_demo/screens/player/widgets/detail-page.dart';
import 'package:flutter_demo/screens/player/widgets/discuss-page.dart';
import 'package:flutter_demo/screens/player/widgets/mini-teacher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({super.key});
  final FijkPlayer player = FijkPlayer();
  @override
  State<StatefulWidget> createState() => PlayerState();
}

class PlayerState extends State<PlayerPage> with TickerProviderStateMixin {
  final FijkPlayer player = new FijkPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              })),
      extendBodyBehindAppBar: true,
      body: Container(
          child: Column(
        children: [
          FijkView(
            player: player,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 9 / 16,
            color: Colors.black,
            fit: FijkFit.fitHeight,
          ),
          Expanded(
              child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 44.w,
                      width: 128.w,
                      child: Container(
                        child: TabBar(dividerColor: Colors.white, tabs: [
                          Tab(text: "详情"),
                          Tab(text: "评论"),
                        ]),
                      ),
                    ),
                    Container(
                      child: MiniTeacher(
                        onAuthorPress: () {},
                        onLikePress: () {},
                      ),
                    )
                  ],
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: TabBarView(children: [
                      DetailPage(),
                      DiscussPage(),
                    ]),
                  ),
                ),
              ],
            ),
          )),
          BottomBar(onAuthorPress: () {}, onLikePress: () {})
        ],
      )),
    );
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setDataSource(
        "https://newcntv.qcloudcdn.com/asp/hls/main/0303000a/3/default/cac249e5b8ee49d4887d01ab1bcb92dc/main.m3u8?maxbr=2048",
        autoPlay: true);
    // _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.release();
  }
}
