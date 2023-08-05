import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/model/SimpleKeyValue.dart';
import 'package:flutter_demo/weights/item-series-last.dart';
import 'package:flutter_demo/weights/items-keywords-trend.dart';
import 'package:flutter_demo/weights/items-series-tags.dart';
import 'package:flutter_demo/weights/items-serieses-latest.dart';
import 'package:flutter_demo/weights/items-serieses-shuffle.dart';
import 'package:flutter_demo/weights/items-teachers-shuffle.dart';
import 'package:flutter_demo/weights/my-swiper.dart';

class SeriesesPage extends StatefulWidget {
  SeriesesPage({super.key});
  @override
  State<StatefulWidget> createState() => SeriesesState();
}

class SeriesesState extends State<SeriesesPage>
    with AutomaticKeepAliveClientMixin {
  double width = 0;
  double height = 0;
  int currentIndex = 0;
  String selectYear = '2009';
  String selectSort = '';

  final CarouselController swiper = CarouselController();

  onYearPress(item) {
    selectYear = item.value;
    setState(() {});
  }

  onSortPress(item) {
    selectSort = item.value;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = width / 3;
    return Scaffold(
        backgroundColor: Color(0xfff5f7f9),
        resizeToAvoidBottomInset: true,
        body: ListView(addAutomaticKeepAlives: false, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  ItemsSeriesTagsWidget(
                      select: this.selectYear,
                      datas: SimpleKeyValue.seriesYears(),
                      onItemPress: onYearPress),
                  ItemsSeriesTagsWidget(
                      select: this.selectSort,
                      datas: SimpleKeyValue.seriesSorts(),
                      onItemPress: onSortPress)
                ],
              )),
          SizedBox(height: 12),
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
