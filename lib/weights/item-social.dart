import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSocialWidget extends StatefulWidget {
  final onItemPress;
  ItemSocialWidget({
    Key? key,
    required this.onItemPress,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => ItemSocialState();
}

class ItemSocialState extends State<ItemSocialWidget> {
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
                    58),
                height: 58.w,
                width: 58.w,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: SizedBox(
              height: 58.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "陈桥驿站",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                      "创建于两周前 · ${Random().nextInt(999)}帖子 · ${Random().nextInt(999)}加入",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            )),
            ElevatedButton(
                onPressed: () {
                  isLoading = !isLoading;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  '加入',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ))
          ],
        ),
      ]),
    );
  }
}
