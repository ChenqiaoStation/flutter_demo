import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  final onInputPress;
  final onSupportPress;
  final onCollectPress;

  BottomBar(
      {required this.onInputPress,
      required this.onSupportPress,
      required this.onCollectPress});

  buildCounter(context, icon, value, f) => Container(
        width: 32.w,
        child: GestureDetector(
          onTap: () {
            f();
          },
          child: Column(
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 20.w,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 10.sp),
              )
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
          left: 12,
          right: 12,
          top: 12,
          bottom: 12 + MediaQuery.of(context).padding.bottom),
      child: Row(
        children: [
          Flexible(
              child: GestureDetector(
            onTap: () {
              onInputPress();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                    size: 16.w,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '说点什么吧 ...',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            width: 16.w,
          ),
          Row(
            children: [
              buildCounter(context, Icons.favorite_outline, '0', () {
                onCollectPress();
              }),
              buildCounter(context, Icons.thumb_up_alt_outlined, '0', () {
                onSupportPress();
              }),
              buildCounter(
                  context, Icons.mark_chat_unread_outlined, '0', () {}),
            ],
          )
        ],
      ),
    );
  }
}
