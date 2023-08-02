import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/home.dart';

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
              bottom: TabBar(
                padding: EdgeInsets.all(0),
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white70,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                enableFeedback: false,
                tabs: [
                  MyTab(icon: Icons.public, label: '首页'),
                  MyTab(icon: Icons.devices_fold, label: '发现'),
                  MyTab(icon: Icons.interests, label: '社区'),
                  MyTab(icon: Icons.fingerprint, label: '我的'),
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
