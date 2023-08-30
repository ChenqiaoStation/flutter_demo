import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShuffleTeachers extends StatefulWidget {
  ShuffleTeachers({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ShuffleTeachersState();
}

class ShuffleTeachersState extends State<ShuffleTeachers> {
  final datas = List.generate(8, (index) => null);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: datas
                  .map((e) => Container(
                      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                      child: Container(
                        width: 81.w,
                        child: Column(
                          children: [
                            Image.network(
                              xUtils.useCDN(
                                  'https://cdn.cctv3.net/net.cctv3.typecho/i.jpg',
                                  64),
                              height: 64.w,
                              width: 64.w,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  '大唐贵妃',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 1,
                                ),
                                Text(
                                  '大唐贵妃杨玉环，羞花之貌、倾国倾城。那么，真实的历史中，杨贵妃真的是个“胖美人”吗？这位马蹄硝烟下的乱世佳人，这位谜一样的奇女子，用她的一生，为我们谱写出了一曲婉转动人的长恨歌！',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black.withOpacity(0.618),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ],
                        ),
                      )))
                  .toList(),
            )));
  }
}
