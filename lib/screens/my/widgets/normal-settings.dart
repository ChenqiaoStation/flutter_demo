import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_demo/model/CommonMenu.dart';

class NormalSettings extends StatelessWidget {
  final onMenuPress;

  NormalSettings({required this.onMenuPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '常用设置',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          ...CommonMenu.loadCommonMenus()
              .map((e) => GestureDetector(
                    onTap: () {
                      onMenuPress(e.id);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                e.icon,
                                size: 24.sp,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                e.name,
                                style: TextStyle(fontSize: 16.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16.sp,
                          )
                        ],
                      ),
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
