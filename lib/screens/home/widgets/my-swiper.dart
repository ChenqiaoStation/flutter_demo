import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MySwiper extends StatefulWidget {
  final List<String> datas;
  final onItemPress;
  MySwiper({Key? key, required this.datas, required this.onItemPress})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => MySwiperState();
}

class MySwiperState extends State<MySwiper> {
  double width = 0;
  double height = 0;
  int currentIndex = 0;

  final CarouselController swiper = CarouselController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width - 24;
    height = width / 3;

    return Container(
      height: height,
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: swiper,
                  items: widget.datas.map((it) {
                    return Builder(builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            widget.onItemPress(it);
                          },
                          child: Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/iShenZhen0${it}.jpg?x-oss-process=image/resize,w_${750}',
                                    width: width,
                                    height: height,
                                    fit: BoxFit.cover,
                                  ))));
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
              children: widget.datas.map((entry) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 8,
                    height: 8,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: int.parse(entry) - 1 == currentIndex
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
    );
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
