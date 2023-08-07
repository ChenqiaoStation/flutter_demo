import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/Caches.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawerWidget extends StatefulWidget {
  MyDrawerWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawerWidget> {
  dynamic bingSpider = null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          margin: EdgeInsets.zero,
          accountName: Text('鹏鹏要赚一百万鸭'),
          accountEmail: Text('i@cctv3.net'),
          currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(36.w),
              child: Image.network(
                xUtils.useCDN(
                    "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/i.jpg",
                    128),
                width: 72.w,
                height: 72.w,
              )),
          decoration: BoxDecoration(
              image: bingSpider == null
                  ? null
                  : DecorationImage(
                      //colorFilter: ColorFilter.matrix(X().useGreyImageFilter()),
                      fit: BoxFit.cover,
                      image: NetworkImage(bingSpider['image_url']))),
        ),
        ListTile(
          title: Text('账号设置'),
          leading: Icon(Icons.fingerprint),
          onTap: () {
            xUtils.useToast("HelloWorld.");
          },
        ),
        ListTile(
          title: Text('意见反馈'),
          leading: Icon(Icons.bug_report),
          onTap: () {},
        ),
        ListTile(
          title: Text('关于我们'),
          leading: Icon(Icons.highlight_alt),
          onTap: () {},
        ),
        ListTile(
          title: Text('版本升级'),
          leading: Icon(Icons.rocket_launch),
          onTap: () {},
        ),
        ListTile(
          title: Text('系统设置'),
          leading: Icon(Icons.settings_suggest),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            '退出登录',
            style: TextStyle(color: Colors.grey),
          ),
          leading: Icon(
            Icons.logout,
            color: Colors.grey,
          ),
          onTap: () {},
        ),
      ]),
    );
  }

  loadBingPicture() async {
    String today = xUtils.usePreviousDay(1);
    var userWallpaper = await Caches.get("userWallpaper:${today}");
    if (userWallpaper == null) {
      var result = await Dio().get(
          'https://mouday.github.io/wallpaper-database/${xUtils.usePreviousDay(1)}.json');

      bingSpider = result.data;
      Caches.set("userWallpaper:${today}", result.data);
    } else {
      bingSpider = userWallpaper;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadBingPicture();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
