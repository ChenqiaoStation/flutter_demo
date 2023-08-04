import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constants/x.dart';

class ItemsSeriesesShuffleWidget extends StatefulWidget {
  ItemsSeriesesShuffleWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemsSeriesesShuffleState();
}

class ItemsSeriesesShuffleState extends State<ItemsSeriesesShuffleWidget> {
  final datas = List.generate(8, (index) => null);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        elevation: 1,
        child: Container(
            child: ListView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: datas
              .map((e) => Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  child: Container(
                      height: 100,
                      child: Row(
                        children: [
                          Image.network(
                            X().useCDN(
                                'https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_13-09-22.jpg',
                                84),
                            height: 100,
                            width: 75,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '大唐贵妃',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          '大唐贵妃杨玉环，羞花之貌、倾国倾城。那么，真实的历史中，杨贵妃真的是个“胖美人”吗？这位马蹄硝烟下的乱世佳人，这位谜一样的奇女子，用她的一生，为我们谱写出了一曲婉转动人的长恨歌！',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    )),
                                Flexible(
                                    flex: 0,
                                    fit: FlexFit.loose,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.timer,
                                              size: 16,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              '两天前更新',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          )
                        ],
                      ))))
              .toList(),
        )));
  }
}
