import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  MyPage({super.key});
  final FijkPlayer player = FijkPlayer();
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: const Center(
        child: Text('Demo page.'),
      )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
