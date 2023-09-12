import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShuffleTeachers extends StatelessWidget {
  final datas;
  final onPress;
  ShuffleTeachers({Key? key, required this.datas, required this.onPress})
      : super(key: key);

  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...datas
                    .map((e) => Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                        child: Container(
                          width: 81.w,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(32.w),
                                child: Image.network(
                                  xUtils.useCDN(e['avatar'], 64),
                                  height: 64.w,
                                  width: 64.w,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    e['name'],
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    e['title'],
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
                    .toList()
              ],
            )));
  }
}
