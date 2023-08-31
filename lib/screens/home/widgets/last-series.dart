import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastSeries extends StatefulWidget {
  final onItemPress;
  LastSeries({Key? key, required this.onItemPress}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LastSeriesState();
}

class LastSeriesState extends State<LastSeries> {
  @override
  Widget build(BuildContext context) {
    return GroupCard(
      title: '最近更新',
      child: Container(
          height: 100.w,
          child: GestureDetector(
            onTap: () {
              widget.onItemPress();
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    xUtils.useCDN(
                        'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_13-09-22.jpg',
                        84),
                    height: 100.w,
                    width: 75.w,
                    fit: BoxFit.fill,
                  ),
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
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                                maxLines: 1,
                              ),
                              Text(
                                '大唐贵妃杨玉环，羞花之貌、倾国倾城。那么，真实的历史中，杨贵妃真的是个“胖美人”吗？这位马蹄硝烟下的乱世佳人，这位谜一样的奇女子，用她的一生，为我们谱写出了一曲婉转动人的长恨歌！',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black.withOpacity(0.618),
                                ),
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
                                    size: 16.sp,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    '两天前更新',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12.sp),
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
            ),
          )),
    );
  }
}
