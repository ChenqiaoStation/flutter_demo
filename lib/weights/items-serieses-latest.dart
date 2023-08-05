import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsSeriesesLatestWidget extends StatefulWidget {
  ItemsSeriesesLatestWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemsSeriesesLatestState();
}

class ItemsSeriesesLatestState extends State<ItemsSeriesesLatestWidget> {
  final datas = List.generate(8, (index) => null);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 166.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: ListView(
          addAutomaticKeepAlives: false,
          scrollDirection: Axis.horizontal,
          children: datas
              .map((e) => Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  child: Container(
                    width: 81.w,
                    child: Column(
                      children: [
                        Image.network(
                          xUtils.useCDN(
                              'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_13-09-22.jpg',
                              84),
                          height: 100.w,
                          width: 75.w,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              '大唐贵妃',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              '大唐贵妃杨玉环，羞花之貌、倾国倾城。那么，真实的历史中，杨贵妃真的是个“胖美人”吗？这位马蹄硝烟下的乱世佳人，这位谜一样的奇女子，用她的一生，为我们谱写出了一曲婉转动人的长恨歌！',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ],
                    ),
                  )))
              .toList(),
        ));
  }
}
