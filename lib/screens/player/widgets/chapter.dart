import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chapter extends StatelessWidget {
  final onAuthorPress;
  final onLikePress;

  Chapter({required this.onAuthorPress, required this.onLikePress});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    buildCounter(context, icon, value) => Container(
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 18.w,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                value,
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 14.sp),
              )
            ],
          ),
        );
    return GroupCard(
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                buildCounter(context, Icons.live_tv, '1024播放'),
                SizedBox(
                  width: 12,
                ),
                buildCounter(context, Icons.date_range, '更新于：2023-08-31')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '简介：溥仪让溥杰悄悄地把建福宫里的一些奇珍异宝运往醇亲王府，大约半年左右的时间里，溥杰连卷带夹运走了1300多件珍贵文物。由于溥仪带头监守自盗，大臣太监们也跟着盗运国宝，用赝品代替珍品放在建福宫。溥仪知道后，想要彻查此事，于是建福宫就被一把大火烧了。建福宫发生火灾后，溥仪下令驱逐太监出宫。因为太监年幼时进宫，身无一技之长，出宫没有活路，所以上千太监出了宫就自杀身亡了。',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.618),
                  fontSize: 14.sp,
                  overflow: TextOverflow.ellipsis),
              maxLines: 3,
            )
          ],
        )),
        title: '11.神秘的建福宫大火');
  }
}
