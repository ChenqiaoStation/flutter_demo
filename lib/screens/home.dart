import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final FijkPlayer player = FijkPlayer();
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  final FijkPlayer player = new FijkPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello flutter.'),
      ),
      body: Container(child: FijkView(player: player)),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setDataSource(
        "https://newcntv.qcloudcdn.com/asp/hls/main/0303000a/3/default/5e52dfa3ed7e40acafdd5ea0b66b0625/main.m3u8?maxbr=2048",
        autoPlay: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.release();
  }
}
