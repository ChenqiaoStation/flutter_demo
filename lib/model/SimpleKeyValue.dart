import 'package:flutter_demo/constants/xUtils.dart';

class SimpleKeyValue {
  String name;
  String value;

  SimpleKeyValue({required this.name, required this.value});

  static List<SimpleKeyValue> seriesYears() {
    int thisYear = DateTime.now().year;
    List years = List.generate(
        thisYear - 2009,
        (index) =>
            SimpleKeyValue(name: '${index + 2010}年', value: '${index + 2010}'));
    return [SimpleKeyValue(name: '2009年及以前', value: '2009'), ...years];
  }
  
  static List<SimpleKeyValue> seriesSorts() {
    return [
      SimpleKeyValue(name: '默认', value: ''),
      SimpleKeyValue(name: '播放量', value: 'play'),
      SimpleKeyValue(name: '收藏量', value: 'collect'),
    ];
  }
}