import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/item-social.dart';
import 'package:flutter_demo/weights/item-topic.dart';

class SocialPage extends StatefulWidget {
  SocialPage({super.key});
  @override
  State<StatefulWidget> createState() => SocialState();
}

class SocialState extends State<SocialPage> with AutomaticKeepAliveClientMixin {
  List list = List.generate(10, (index) => index);
  onItemPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f7f9),
        body: ListView(addAutomaticKeepAlives: false, children: [
          Column(
            children: list
                .map((e) => ItemSocialWidget(
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
