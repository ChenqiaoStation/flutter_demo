import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfile extends StatelessWidget {
  final bingSpider;

  MyProfile({required this.bingSpider});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 9 / 16,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: bingSpider == null
              ? null
              : DecorationImage(image: NetworkImage(bingSpider["image_url"]))),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.6, sigmaY: 3.6),
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
          )),
    );
  }
}
