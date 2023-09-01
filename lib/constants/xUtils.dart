import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class xUtils {
  static useCDN(String url, int width) {
    return '${url}?x-oss-process=image/resize,w_${width * 2}';
  }

  static Color useRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  static usePreviousDay(int days) {
    DateTime now = DateTime.now();
    DateTime yesterday = now.subtract(Duration(days: days));
    String formattedDate =
        "${yesterday.year}/${yesterday.month.toString().padLeft(2, '0')}/${yesterday.day.toString().padLeft(2, '0')}";
    return formattedDate;
  }

  static useSeconds2HHmmss(int seconds) {
    Duration duration = Duration(seconds: seconds);
    String time = duration.toString().split('.').first.padLeft(8, "0");
    return time;
  }

  static useGreyImageFilter() {
    return [
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ];
  }

  static useToast(String text) {
    BotToast.showText(
        text: text,
        animationDuration: Duration(milliseconds: 618),
        textStyle: TextStyle(fontSize: 16, color: Colors.white));
  }

  static useSortedChapters(List<dynamic> list) {
    var _list = [...list];
    _list.sort((a, b) {
      return int.parse(a['title'].split('.')[0]) -
          int.parse(b['title'].split('.')[0]);
    });
    return _list;
  }

  static useNavigation(BuildContext context, Widget child) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => child));
  }
}
