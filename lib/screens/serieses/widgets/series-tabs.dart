import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/model/SimpleKeyValue.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeriesTabs extends StatefulWidget {
  final List<SimpleKeyValue> datas;
  final onItemPress;
  final select;
  final isDot;
  final isZoomOut;
  SeriesTabs(
      {Key? key,
      required this.datas,
      required this.onItemPress,
      required this.select,
      required this.isDot,
      required this.isZoomOut})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => SeriesTabsState();
}

class SeriesTabsState extends State<SeriesTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: widget.datas
                  .map(
                    (e) => GestureDetector(
                        onTap: () {
                          widget.onItemPress(e);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Column(
                              children: [
                                Text(
                                  e.name,
                                  style: TextStyle(
                                      fontSize: widget.select == e.value &&
                                              widget.isZoomOut
                                          ? 18.sp
                                          : 16.sp,
                                      color: widget.select == e.value
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey,
                                      fontWeight: widget.select == e.value
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                                widget.isDot
                                    ? Container(
                                        height: 6,
                                        width: 6,
                                        padding: EdgeInsets.only(top: 4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: widget.select == e.value
                                                ? Theme.of(context).primaryColor
                                                : Colors.transparent),
                                      )
                                    : Container()
                              ],
                            ))),
                  )
                  .toList(),
            )));
  }
}
