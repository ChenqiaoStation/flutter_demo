import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = width / 3;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: swiper,
                  items: [1, 2, 3, 4, 5].map((it) {
                    return Builder(builder: (context) {
                      return Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Banner${it}.jpg?x-oss-process=image/resize,w_${1080}',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    height: height,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: Duration(milliseconds: 2048),
                    aspectRatio: height / width,
                    // 每个 item 的宽度充满屏幕
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5].map((entry) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 8,
                    height: 8,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: entry - 1 == currentIndex
                          ? Colors.amber[700]
                          : Colors.black54,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ));
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
