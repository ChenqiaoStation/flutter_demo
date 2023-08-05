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
}