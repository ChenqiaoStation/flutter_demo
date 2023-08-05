import 'dart:math';
import 'package:flutter/material.dart';

class X {
  useCDN(String url, int width) {
    return '${url}?x-oss-process=image/resize,w_${width * 2}';
  }

  Color useRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  usePreviousDay(int days) {
    DateTime now = DateTime.now();
    DateTime yesterday = now.subtract(Duration(days: days));
    String formattedDate =
        "${yesterday.year}/${yesterday.month.toString().padLeft(2, '0')}/${yesterday.day.toString().padLeft(2, '0')}";
    return formattedDate;
  }

  useGreyImageFilter() {
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
}
