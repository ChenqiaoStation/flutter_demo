import 'dart:developer';

import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/weights/my-swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final FijkPlayer player = FijkPlayer();
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
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
        body: Container(
            height: height,
            child: MySwiperWidget(
                datas: ['1', '2', '3', '4', '5'], onItemPress: onSwiperPress)));
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
}
