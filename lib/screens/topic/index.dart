import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/topic/widgets/item.dart';

class TopicPage extends StatefulWidget {
  TopicPage({super.key});
  @override
  State<StatefulWidget> createState() => TopicState();
}

class TopicState extends State<TopicPage> with AutomaticKeepAliveClientMixin {
  List list = List.generate(10, (index) => index);
  onItemPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(addAutomaticKeepAlives: false, children: [
          Column(
            children: list
                .map((e) => TopicItem(
                      onItemPress: onItemPress,
                    ))
                .toList(),
          )
        ]));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;
}
