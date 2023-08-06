import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/model/SimpleKeyValue.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemTopicWidget extends StatefulWidget {
  final onItemPress;
  ItemTopicWidget({
    Key? key,
    required this.onItemPress,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemTopicState();
}

class ItemTopicState extends State<ItemTopicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                xUtils.useCDN(
                    "https://cdn.cctv3.net/net.cctv3.typecho/i.jpg", 48),
                height: 48,
                width: 48,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    "陈桥驿站",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  // SizedBox(width: 4),
                  // Text(
                  //   "08-04 12:34",
                  //   style: TextStyle(color: Colors.grey, fontSize: 12),
                  // )
                ]),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "发表于两分钟前",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            )),
            Text(
              '+关注',
              style: TextStyle(color: Colors.blueAccent, fontSize: 14),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 75.w,
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "17.没留记载的溥仪未遂复辟",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "在天津，许多事情让溥仪深感失落，他让晚清遗老写信给吴佩孚，提出了两条建议：一是要求恢复溥仪宣统年号，让溥仪重新回归故宫；二是恢复《清室优待条件》。实际上这就意味着溥仪要复辟登基了。对于溥仪复辟一事，国务院秘密地举行了一次无记名投票，结果是否定溥仪的议案，于是溥仪就向故宫和民国政府发难，最后溥仪赢了出宫后的第一场官司。",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  "https://p1.img.cctvpic.com/fmspic/2016/09/21/d04efcdd733948eab722e9cae85ec307-1150.jpg",
                  height: 75.w,
                  width: 100.w,
                  fit: BoxFit.cover,
                )),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),
              child: Row(
                children: [
                  Icon(
                    Icons.whatshot_outlined,
                    size: 16,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '17.没留记载的溥仪未遂复辟',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.chat_outlined,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text('12',
                        style: TextStyle(color: Colors.grey, fontSize: 12))
                  ],
                ),
                SizedBox(width: 24),
                Row(
                  children: [
                    Icon(Icons.thumb_up_off_alt, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('34',
                        style: TextStyle(color: Colors.grey, fontSize: 12))
                  ],
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
