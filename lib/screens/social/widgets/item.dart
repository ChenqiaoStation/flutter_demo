import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialItem extends StatefulWidget {
  final onItemPress;
  SocialItem({
    Key? key,
    required this.onItemPress,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SocialItemState();
}

class SocialItemState extends State<SocialItem> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                xUtils.useCDN(
                    "https://cdn.cctv3.net/net.cctv3.SuiShenBan/WeChatAvatar/${Random().nextInt(999)}.jpg",
                    72),
                height: 48.w,
                width: 48.w,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: SizedBox(
              height: 48.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "陈桥驿站",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                    // SizedBox(width: 4),
                    // Text(
                    //   "08-04 12:34",
                    //   style: TextStyle(color: Colors.grey, fontSize: 12),
                    // )
                  ]),
                  Text(
                    "发表于两分钟前",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 32.sp,
              child: FilledButton(
                  onPressed: () {
                    isLoading = !isLoading;
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12)),
                  child: Text(
                    '加入',
                    style: TextStyle(fontSize: 14.sp),
                  )),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text("创建于两周前 · ${Random().nextInt(999)}帖子 · ${Random().nextInt(999)}加入",
            style: TextStyle(
                color: Colors.black.withOpacity(0.618), fontSize: 12.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
      ]),
    );
  }
}
