import 'dart:developer';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/AESUtils.dart';
import 'package:flutter_demo/constants/Services.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/screens/home/widgets/last-series.dart';
import 'package:flutter_demo/screens/home/widgets/shuffle-serieses.dart';
import 'package:flutter_demo/screens/home/widgets/shuffle-teachers.dart';
import 'package:flutter_demo/screens/home/widgets/trend-keywords.dart';
import 'package:flutter_demo/screens/player/index.dart';
import 'package:flutter_demo/screens/home/widgets/my-swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  double width = 0;
  double height = 0;
  int currentIndex = 0;
  bool isSearching = false;
  List popularKeywords = [];
  List shuffleTeachers = [];
  dynamic latestSeries = null;
  List shuffleSerieses = [];

  final CarouselController swiper = CarouselController();

  onSwiperPress(item) {}

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 16,
          title: isSearching
              ? SizedBox(
                  height: Platform.isAndroid ? 32.sp : 36.sp,
                  child: TextField(
                    autofocus: true,
                    onSubmitted: (s) {},
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 1,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 18),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(16.sp)),
                    ),
                  ),
                )
              : Container(
                  height: 20,
                  child: Marquee(
                    text: '汇集百家学养、追慕大师风范，平如开放胸襟、通往大众桥梁。',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    pauseAfterRound: Duration(seconds: 0),
                    startPadding: 0,
                    velocity: 18,
                    accelerationDuration: Duration(seconds: 0),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 0),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
          actions: [
            IconButton(
              icon:
                  isSearching ? Icon(Icons.close_outlined) : Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                isSearching = !isSearching;
                setState(() {
                  isSearching;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email_outlined),
              color: Colors.white,
              onPressed: () {
                String base64 = new AesUtils().toBase64("HelloWorld.");
                String primary = new AesUtils().fromBase64(base64);
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor.withOpacity(0.618)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          // bottom: TabBar(
          //   padding: EdgeInsets.all(0),
          //   labelColor: Colors.white,
          //   indicatorColor: Colors.white,
          //   labelStyle: TextStyle(fontWeight: FontWeight.bold),
          //   unselectedLabelColor: Colors.white70,
          //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          //   enableFeedback: false,
          //   tabs: [
          //     MyTab(icon: Icons.public, label: '首页'),
          //     MyTab(icon: Icons.devices_fold, label: '发现'),
          //     MyTab(icon: Icons.interests, label: '社区'),
          //     MyTab(icon: Icons.fingerprint, label: '我的'),
          //   ],
          // ),
        ),
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomInset: true,
        body: ListView(
            addAutomaticKeepAlives: false,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: [
              ...[
                MySwiper(
                    datas: List.generate(4, (index) => '${index + 1}'),
                    onItemPress: onSwiperPress),
                LastSeries(
                    data: latestSeries,
                    onItemPress: () {
                      xUtils.useNavigation(context, PlayerPage());
                    }),
                TrendKeywords(
                  datas: popularKeywords,
                  onPress: () {},
                ),
                ShuffleTeachers(
                  datas: shuffleTeachers,
                  onPress: () {},
                ),
                ShuffleSerieses(datas: shuffleSerieses, onPress: () {}),
              ]
                  .map((e) => Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: e,
                      ))
                  .toList()
            ]));
  }

  loadPopularSearches() async {
    var result = await Services.selectPopularSearches(10);
    popularKeywords = [...result['data']];
    setState(() {});
  }

  loadShuffleTeachers() async {
    var result = await Services.selectShuffleTeachers(10);
    shuffleTeachers = [...result['data']];
    setState(() {});
  }

  loadLatestSeries() async {
    var result = await Services.selectLatestSeries();
    latestSeries = result['data'];
    setState(() {});
  }

  loadShuffleSerieses() async {
    var result = await Services.selectShuffleSerieses(9);
    shuffleSerieses = [...result['data']];
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPopularSearches();
    loadShuffleTeachers();
    loadLatestSeries();
    loadShuffleSerieses();
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
