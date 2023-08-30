import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeriesItem extends StatelessWidget {
  final item;

  SeriesItem({required this.item});

  buildCount(context, icon, text) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.08),
            border: Border.all(width: 1, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp, color: Theme.of(context).primaryColor),
            ),
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 12.sp,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                item['capture'] as String,
                width: 75.w,
                height: 100.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: Container(
              height: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'] as String,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      Text(
                        item['message'] as String,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.618),
                            fontSize: 14.sp,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.w)),
                              child: Image.network(
                                'https://cdn.cctv3.net/net.cctv3.typecho/i.jpg',
                                height: 32.w,
                                width: 32.w,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '陈桥驿站',
                              style: TextStyle(fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          buildCount(context, Icons.play_circle_outline,
                              '${item['clickCount']} 播放'),
                          SizedBox(
                            width: 12,
                          ),
                          buildCount(
                            context,
                            Icons.favorite_outline,
                            '${item['clickCount']} 收藏',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        )
      ]),
    );
  }
}
