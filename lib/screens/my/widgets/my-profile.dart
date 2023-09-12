import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfile extends StatelessWidget {
  final bingSpider;

  MyProfile({required this.bingSpider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = width * 9 / 16;
    return Container(
      child: Stack(
        children: [
          bingSpider == null
              ? Container()
              : Image.network(bingSpider["image_url"]),
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.38)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44.w),
                    child: Image.network(
                      "https://cdn.cctv3.net/net.cctv3.typecho/i.jpg",
                      height: 88.w,
                      width: 88.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  bingSpider == null ? '' : bingSpider['headline'],
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  bingSpider == null ? '' : bingSpider['description'],
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
