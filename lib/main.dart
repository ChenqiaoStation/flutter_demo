import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter("./");
  runApp(const HelloFlutter());
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /** iPhone6s */
    ScreenUtil.init(context, designSize: const Size(375, 667));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppPage(),
    );
  }
}