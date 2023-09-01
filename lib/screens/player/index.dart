import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/screens/player/widgets/bottom-bar.dart';
import 'package:flutter_demo/screens/player/widgets/detail-page.dart';
import 'package:flutter_demo/screens/player/widgets/discuss-page.dart';
import 'package:flutter_demo/screens/player/widgets/mini-teacher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 获取键盘高度: https://stackoverflow.com/questions/49269319/get-keyboard-height-in-flutter
class PlayerPage extends StatefulWidget {
  PlayerPage({super.key});
  final FijkPlayer player = FijkPlayer();

  @override
  State<StatefulWidget> createState() => PlayerState();
}

class PlayerState extends State<PlayerPage>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final FijkPlayer player = new FijkPlayer();
  int bottomBarStatus = 0;

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
          child: Stack(
        children: [
          Column(
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
                        Flexible(
                          child: Container(
                            child: TabBar(
                                dividerColor: Colors.white,
                                labelStyle: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                                tabs: [
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
              [
                BottomBar(
                  onInputPress: () {
                    setState(() {
                      bottomBarStatus = 1;
                    });
                  },
                  onSupportPress: () {},
                  onCollectPress: () {},
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    child: Container(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                autofocus: true,
                                onSubmitted: (s) {
                                  setState(() {
                                    bottomBarStatus = 0;
                                  });
                                },
                                textInputAction: TextInputAction.done,
                                style: const TextStyle(fontSize: 14),
                                // 高度自适应
                                maxLines: null,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  // 当显示一行的时候有BUG，输入框内上下边距过高
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 12),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, style: BorderStyle.none),
                                      borderRadius:
                                          BorderRadius.circular(16.w)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 36.w,
                              child: FilledButton(
                                  onPressed: () {
                                    setState(() {
                                      bottomBarStatus = 0;
                                    });
                                  },
                                  child: Text(
                                    '评论',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp),
                                  )),
                            )
                          ]),
                    )),
              ][bottomBarStatus],
            ],
          )
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
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.release();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final isKeyboardClosed = MediaQuery.of(context).viewInsets.bottom == 0;
      if (isKeyboardClosed) {
        // 执行您想要的操作
      }
    });
  }
}
