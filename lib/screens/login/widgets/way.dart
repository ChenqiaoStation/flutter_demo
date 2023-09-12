import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Way extends StatelessWidget {
  final index;
  final onPress;

  Way({required this.index, required this.onPress});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 64,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  '其他登录方式',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 14.sp),
                ),
              ),
              Container(
                height: 1,
                width: 64,
                decoration: BoxDecoration(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.w),
                    color: Theme.of(context).primaryColor.withOpacity(0.18)),
                child: IconButton(
                    onPressed: () {
                      onPress();
                    },
                    icon: Icon(
                      [Icons.key, Icons.phone_android][index],
                      color: Theme.of(context).primaryColor,
                      size: 32.w,
                    )),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                ['账号密码', '手机验证码'][index],
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              )
            ],
          )
        ],
      ),
    );
  }
}
