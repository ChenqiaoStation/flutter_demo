import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfile extends StatelessWidget {
  final bingSpider;
  final person;
  final onPress;

  MyProfile(
      {required this.bingSpider, required this.person, required this.onPress});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = width * 9 / 16;
    return Container(
      child: Stack(
        children: [
          Image.network(bingSpider["image_url"]),
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.38)),
            child: GestureDetector(
              onTap: onPress,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(44.w),
                      child: Image.network(
                        person['avatar'],
                        height: 88.w,
                        width: 88.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    person['nick'],
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    person['motto'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
