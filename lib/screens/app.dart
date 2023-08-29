import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/community.dart';
import 'package:flutter_demo/screens/demo.dart';
import 'package:flutter_demo/screens/home.dart';
import 'package:flutter_demo/screens/my.dart';
import 'package:flutter_demo/screens/serieses.dart';
import 'package:flutter_demo/weights/my-drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'dart:io' show Platform;

class AppPage extends StatefulWidget {
  AppPage({super.key});
  @override
  State<StatefulWidget> createState() => AppState();
}

class MyTab extends StatelessWidget {
  final IconData icon;
  final String label;

  MyTab({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Tab(
      icon: Row(
        children: [
          Icon(
            this.icon,
            size: 20,
          ),
          SizedBox(width: 5),
          Text(this.label, style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }
}

class AppState extends State<AppPage> {
  int index = 0;
  bool isSearching = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 16,
          title: isSearching
              ? SizedBox(
                  height: Platform.isAndroid ? 32 : 36,
                  child: TextField(
                    autofocus: true,
                    onSubmitted: (s) {},
                    textInputAction: TextInputAction.done,
                    style: TextStyle(fontSize: 14),
                    maxLines: 1,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                )
              : Container(
                  height: 20,
                  child: Marquee(
                    text: '汇集百家学养、追慕大师风范，平如开放胸襟、通往大众桥梁。',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    pauseAfterRound: Duration(seconds: 0),
                    startPadding: 0,
                    velocity: 18,
                    accelerationDuration: Duration(seconds: 0),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 0),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
          leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () => scaffoldKey.currentState?.openDrawer()),
          actions: [
            IconButton(
              icon:
                  isSearching ? Icon(Icons.close_outlined) : Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                isSearching = !isSearching;
                setState(() {
                  isSearching;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email_outlined),
              color: Colors.white,
              onPressed: () => {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          // bottom: TabBar(
          //   padding: EdgeInsets.all(0),
          //   labelColor: Colors.white,
          //   indicatorColor: Colors.white,
          //   labelStyle: TextStyle(fontWeight: FontWeight.bold),
          //   unselectedLabelColor: Colors.white70,
          //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          //   enableFeedback: false,
          //   tabs: [
          //     MyTab(icon: Icons.public, label: '首页'),
          //     MyTab(icon: Icons.devices_fold, label: '发现'),
          //     MyTab(icon: Icons.interests, label: '社区'),
          //     MyTab(icon: Icons.fingerprint, label: '我的'),
          //   ],
          // ),
        ),
        // body: TabBarView(children: [
        //   HomePage(),
        //   SeriesesPage(),
        //   CommunityPage(),
        //   HomePage(),
        // ])
        drawer: MyDrawerWidget(),
        body: IndexedStack(
          index: index,
          children: [
            HomePage(),
            SeriesesPage(),
            CommunityPage(),
            DemoPage(),
            MyPage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _items(),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: index,
          enableFeedback: false,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          elevation: 16,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ));
  }

  List<BottomNavigationBarItem> _items() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.public),
        label: '首页',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.devices_fold),
        label: '发现',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.interests),
        label: '社区',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.cloud_sync),
        label: '同步',
      ),
      // const BottomNavigationBarItem(
      //   icon: Icon(Icons.fingerprint),
      //   label: '我的',
      // ),
    ];
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
