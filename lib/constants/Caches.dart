import 'package:hive_flutter/hive_flutter.dart';

class Caches {
  Caches() {}
  static set(String key, dynamic value) async {
    var box = await Hive.openBox("cache");
    box.put(key, value);
  }

  static get(String key) async {
    var box = await Hive.openBox("cache");
    return box.get(key);
  }
}