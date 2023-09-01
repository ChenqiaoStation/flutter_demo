import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscussPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DiscussPageState();
}

class DiscussPageState extends State<DiscussPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(
            height: 12,
          ),
          ...List.generate(
              10,
              (index) => Container(
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: SimpleCard(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18.w),
                              child: Image.network(
                                'https://cdn.cctv3.net/net.cctv3.typecho/i.jpg',
                                height: 36.w,
                                width: 36.w,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '陈桥驿站',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.sp),
                                ),
                                Text(
                                  '2周前',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12.sp),
                                )
                              ],
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 36.w + 5),
                          child: Text(
                            '朱棣凭借武力从他的侄子朱允炆抢夺江山社稷，按理说他应当无所顾忌可以大摇大摆地做起皇帝来，为什么他还要多次推让，说自己不够资格做皇帝呢？而早在攻打南京之前，朱棣的谋臣姚广孝就郑重其事的向他请求，有一个人千万杀不得，朱棣也满口答应。但他为什么后来不仅凌迟处死了这个人，而且还变本加厉地屠杀了这个人的“十族”，从而使得八百多人丧命。更为奇怪的是，朱棣一再强调他的母亲是马皇后，自己是马皇后所生，他为什么要这样做？这当中究竟有什么秘密？',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.618),
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    )),
                  ))
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
