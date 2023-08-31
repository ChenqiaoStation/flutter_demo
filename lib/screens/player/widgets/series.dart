import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Series extends StatelessWidget {
  final onAuthorPress;
  final onLikePress;

  Series({required this.onAuthorPress, required this.onLikePress});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SimpleCard(
        child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://p2.img.cctvpic.com/imagepic//C39733/ibugu/images/img1350028727993545.jpg",
                height: 100.w,
                width: 75.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Flexible(
                child: Container(
              height: 100.w,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "王立群读《宋史》之宋太祖",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        // fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.save_outlined,
                              size: 16.sp,
                              color: Colors.black.withOpacity(0.618)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("32个视频：12.34小时",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black.withOpacity(0.618)))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            size: 16.sp,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("备注：暂无备注 ...",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 16.sp,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("更新于：2023-08-31 12:34:56",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "简介：《王立群读宋史》将评述宋太祖、宋太宗、宋仁宗、宋神宗、宋徽宗等五位北宋皇帝的生平故事，通过五位皇帝将北宋一百六十八年的历史大事贯穿起来，力图重新再现一千年前北宋的繁华风采。《宋太祖》既不同于正史的严肃晦涩，也不同于演义、影视作品的杜撰戏说、漫无边际；它既有学术性，又有可读性，做到了学术性与通俗性的完美结合。",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis),
          maxLines: 3,
        )
      ],
    ));
  }
}
