import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constants/x.dart';

class ItemsTeachersShuffleWidget extends StatefulWidget {
  ItemsTeachersShuffleWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemsTeachersShuffleState();
}

class ItemsTeachersShuffleState extends State<ItemsTeachersShuffleWidget> {
  final datas = List.generate(8, (index) => null);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        elevation: 1,
        child: Container(
            child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          childAspectRatio: 0.7,
          addAutomaticKeepAlives: false,
          children: datas
              .map((e) => Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Image.network(
                        X().useCDN(
                            "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-01_20-54-11.jpg",
                            27),
                        height: 54,
                        width: 54,
                      ),
                    ),
                    Text(
                      '曾国平',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '重庆大学贸易与行政学院（现公共管理学院）党委书记',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10, color: Colors.black87),
                    )
                  ])))
              .toList(),
        )));
  }
}
