import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/demo.dart';
import 'package:flutter_demo/screens/home.dart';

class AppPage extends StatefulWidget {
  AppPage({super.key});
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<AppPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              elevation: 16,
              title: Text(
                'Hello flutter.',
                style: TextStyle(color: Colors.white),
              ),
              leading: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () => {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () => {},
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
                        colors: [Colors.deepPurple, Colors.redAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
              ),
              bottom: const TabBar(
                padding: EdgeInsets.all(0),
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white70,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                enableFeedback: false,
                tabs: [
                  Tab(
                    icon: Row(
                      children: [
                        Icon(Icons.public),
                        SizedBox(width: 5),
                        Text('首页', style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        Icon(Icons.devices_fold),
                        SizedBox(width: 5),
                        Text('发现', style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        Icon(Icons.interests),
                        SizedBox(width: 5),
                        Text('社区', style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        Icon(Icons.fingerprint),
                        SizedBox(width: 5),
                        Text('我的', style: TextStyle(fontSize: 16))
                      ],
                    ),
                  )
                ],
              ),
            ),
            body: TabBarView(children: [
              HomePage(),
              HomePage(),
              HomePage(),
              HomePage(),
            ])));
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
