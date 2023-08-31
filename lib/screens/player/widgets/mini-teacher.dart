import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniTeacher extends StatelessWidget {
  final onAuthorPress;
  final onLikePress;

  MiniTeacher({required this.onAuthorPress, required this.onLikePress});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.w),
              bottomLeft: Radius.circular(18.w)),
          color: Theme.of(context).primaryColor.withOpacity(0.18)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.w),
            child: Image.network(
              xUtils.useCDN(
                  'https://cdn.cctv3.net/net.cctv3.typecho/i.jpg', 36),
              height: 36.w,
              width: 36.w,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '陈桥驿站',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 10.sp,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '1234',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 10.sp),
                    )
                  ],
                )
              ]),
          Container(
            margin: EdgeInsets.only(left: 5, right: 12),
            child: SizedBox(
                height: 32.w,
                width: 56.w,
                child: FilledButton(
                  child: Text(
                    '订阅',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                  ),
                  onPressed: () {},
                )),
          )
        ],
      ),
    );
  }
}
