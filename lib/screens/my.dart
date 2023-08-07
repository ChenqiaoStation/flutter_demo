import 'package:dio/dio.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyPage> {
  dynamic bingSpider = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 9 / 16,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    image: bingSpider == null
                        ? null
                        : DecorationImage(
                            image: NetworkImage(bingSpider["image_url"]))),
                child: Column(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(44),
                        child: Image.network(
                          "https://cdn.cctv3.net/net.cctv3.typecho/i.jpg",
                          height: 88,
                          width: 88,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      bingSpider == null ? '' : bingSpider['headline'],
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      bingSpider == null ? '' : bingSpider['description'],
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
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
