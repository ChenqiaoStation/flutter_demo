import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/screens/login/index.dart';
import 'package:flutter_demo/screens/markdowner/index.dart';
import 'package:flutter_demo/screens/my-account/index.dart';
import 'package:flutter_demo/screens/my/widgets/my-profile.dart';
import 'package:flutter_demo/screens/my/widgets/normal-settings.dart';
import 'package:flutter_demo/screens/suggest/index.dart';
import 'package:flutter_demo/stores/StatesProvider.dart';
import 'package:provider/provider.dart';

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyPage> {
  StatesProvider statesProvider = StatesProvider();
  onMenuPress(id) {
    xUtils.useToast(id);
    switch (id) {
      case 'account':
        xUtils.useNavigation(context, MyAccountPage());
        break;
      case 'bug':
        xUtils.useNavigation(context, SuggestPage());
        break;

      case 'about':
        xUtils.useNavigation(
            context,
            MarkdownerPage(
                title: '关于我们',
                uri:
                    'https://cdn.cctv3.net/net.cctv3.flutterTruck/docs/about111.md'));
        break;

      case 'rule':
        xUtils.useNavigation(
            context,
            MarkdownerPage(
                title: '平台规则',
                uri:
                    'https://cdn.cctv3.net/net.cctv3.flutterTruck/docs/about111.md'));
        break;

      case 'donate':
        xUtils.useNavigation(
            context,
            MarkdownerPage(
                title: '捐赠支持',
                uri:
                    'https://cdn.cctv3.net/net.cctv3.flutterTruck/docs/about111.md'));
        break;

      case 'exit':
        statesProvider.clearPerson();
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Consumer<StatesProvider>(builder: (build, states, child) {
        return Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Column(
              children: [
                MyProfile(
                    bingSpider: states.bingWallPaper,
                    person: states.person,
                    onPress: () {
                      xUtils.useNavigation(context, LoginPage());
                    }),
                Expanded(
                    child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    NormalSettings(onMenuPress: onMenuPress),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ))
              ],
            ));
      }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    statesProvider = Provider.of<StatesProvider>(context, listen: false);
    loadBingPicture();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  loadBingPicture() async {
    String today = xUtils.usePreviousDay(1);
    var result = await Dio().get(
        'https://mouday.github.io/wallpaper-database/${xUtils.usePreviousDay(1)}.json');
    statesProvider.setBingWallPaper(result.data);
  }
}
