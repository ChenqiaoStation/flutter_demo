import 'package:carousel_slider/carousel_slider.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/item-series-last.dart';
import 'package:flutter_demo/weights/items-keywords-trend.dart';
import 'package:flutter_demo/weights/items-serieses-latest.dart';
import 'package:flutter_demo/weights/items-serieses-shuffle.dart';
import 'package:flutter_demo/weights/items-teachers-shuffle.dart';
import 'package:flutter_demo/weights/my-swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final FijkPlayer player = FijkPlayer();
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  double width = 0;
  double height = 0;
  int currentIndex = 0;

  final CarouselController swiper = CarouselController();

  onSwiperPress(item) {}

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = width / 3;
    return Scaffold(
        backgroundColor: Color(0xfff5f7f9),
        resizeToAvoidBottomInset: true,
        body: ListView(addAutomaticKeepAlives: false, children: [
          SizedBox(
              height: height,
              child: MySwiperWidget(
                  datas: ['1', '2', '3', '4', '5'],
                  onItemPress: onSwiperPress)),
          SizedBox(height: 12),
          Container(
            child: ItemSeriesLastWidget(),
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(height: 12),
          Container(
            child: ItemsKeywordsTrendWidget(),
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(height: 12),
          Container(
            child: ItemsTeachersShuffleWidget(),
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(height: 12),
          Container(
            child: ItemsSeriesesLatestWidget(),
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: ItemsSeriesesShuffleWidget(),
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          SizedBox(
            height: 12,
          ),
        ]));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
