import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItem extends StatelessWidget {
  final icon;
  final title;
  final onPress;

  SettingItem({required this.icon, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          onPress();
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 24.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    title,
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
        ));
  }
}
