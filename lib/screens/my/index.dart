import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/screens/my/widgets/my-profile.dart';
import 'package:flutter_demo/screens/my/widgets/normal-settings.dart';

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyPage> {
  dynamic bingSpider = null;

  onMenuPress(id) {
    xUtils.useToast(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            children: [
              MyProfile(bingSpider: bingSpider),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 12),
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  NormalSettings(onMenuPress: onMenuPress),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ))
            ],
          )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadBingPicture();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  loadBingPicture() async {
    String today = xUtils.usePreviousDay(1);
    var result = await Dio().get(
        'https://mouday.github.io/wallpaper-database/${xUtils.usePreviousDay(1)}.json');
    print(result.data);
    bingSpider = result.data;
    setState(() {});
  }
}
