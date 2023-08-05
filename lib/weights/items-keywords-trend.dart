import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constants/x.dart';

class ItemsKeywordsTrendWidget extends StatefulWidget {
  ItemsKeywordsTrendWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemsKeywordsTrendState();
}

class ItemsKeywordsTrendState extends State<ItemsKeywordsTrendWidget> {
  List<String> datas = [
    "哈希表",
    "树",
    "二叉树",
    "栈",
    "堆（优先队列）",
    "图",
    "链表",
    "二叉搜索树",
    "单调栈",
    "有序集合",
    "队列",
    "拓扑排序",
    "最短路",
    "单调队列",
    "双向链表",
    "最小生成树",
    "欧拉回路",
    "强连通分量",
    "双连通分量"
  ];

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        elevation: 1,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            child: Wrap(
              children: datas
                  .map((e) => Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(Icons.lens_blur, size: 16),
                          SizedBox(
                            width: 4,
                          ),
                          Text(e,
                              style: TextStyle(
                                  color: X().useRandomColor(), fontSize: 14))
                        ]),
                      ))
                  .toList(),
            )));
  }
}
