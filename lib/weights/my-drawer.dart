import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/x.dart';
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
      child: ListView(children: [
        UserAccountsDrawerHeader(
          margin: EdgeInsets.zero,
          accountName: Text('鹏鹏要赚一百万鸭'),
          accountEmail: Text('i@cctv3.net'),
          currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(36.w),
              child: Image.network(
                X().useCDN(
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
      ]),
    );
  }

  loadBingPicture() async {
    var result = await Dio().get(
        'https://mouday.github.io/wallpaper-database/${X().usePreviousDay(1)}.json');

    bingSpider = result.data;
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
