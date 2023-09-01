import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/setting-item.dart';
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
              .map((e) => SettingItem(
                  icon: e.icon,
                  title: e.name,
                  onPress: () {
                    onMenuPress(e.id);
                  }))
              .toList()
        ],
      ),
    );
  }
}
