import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendKeywords extends StatelessWidget {
  final datas;
  final onPress;
  TrendKeywords({Key? key, required this.datas, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GroupCard(
      title: '热门搜索',
      child: Wrap(
        children: [
          ...datas
              .map((e) => Container(
                    margin: EdgeInsets.only(top: 8, right: 8),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(Icons.lens_blur, size: 16.sp),
                      SizedBox(
                        width: 4,
                      ),
                      Text(e['name'],
                          style: TextStyle(
                              color: xUtils.useRandomColor(), fontSize: 14.sp))
                    ]),
                  ))
              .toList()
        ],
      ),
    );
  }
}
