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

  static isPhone(s) {
    return RegExp(
            r'^1(3[0-9]|4[579]|5[0-35-9]|6[56]|7[0135678]|8[0-9]|9[89])\d{8}$')
        .hasMatch(s);
  }

  static String useTimeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    DateTime date = DateTime.parse(dateString).toLocal();
    final now = DateTime.now().toLocal();
    final difference = now.difference(date);

    if (difference.inSeconds < 5) {
      return '刚刚';
    } else if (difference.inSeconds < 60) {
      return '${difference.inSeconds}秒前';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}分钟前';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}小时前';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}天前';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      if (numericDates) {
        return '$weeks周前';
      } else {
        return (weeks == 1) ? '上周' : '$weeks周前';
      }
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      if (numericDates) {
        return '$months个月前';
      } else {
        return (months == 1) ? '上个月' : '$months个月前';
      }
    } else {
      final years = (difference.inDays / 365).floor();
      if (numericDates) {
        return '$years年前';
      } else {
        return (years == 1) ? '去年' : '$years年前';
      }
    }
  }
}
