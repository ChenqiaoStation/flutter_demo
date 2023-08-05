import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSeriesLastWidget extends StatefulWidget {
  ItemSeriesLastWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemSeriesLastState();
}

class ItemSeriesLastState extends State<ItemSeriesLastWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Container(
          height: 100.w,
          child: Row(
            children: [
              Image.network(
                xUtils.useCDN(
                    'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_13-09-22.jpg',
                    84),
                height: 100.w,
                width: 75.w,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '大唐贵妃',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              '大唐贵妃杨玉环，羞花之貌、倾国倾城。那么，真实的历史中，杨贵妃真的是个“胖美人”吗？这位马蹄硝烟下的乱世佳人，这位谜一样的奇女子，用她的一生，为我们谱写出了一曲婉转动人的长恨歌！',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )),
                    Flexible(
                        flex: 0,
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 16,
                                  color: Colors.black54,
                                ),
                                Text(
                                  '两天前更新',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              )
            ],
          )),
    );
  }
}
