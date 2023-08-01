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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello flutter.'),
      ),
      body: IndexedStack(
        index: index,
        children: [HomePage(), DemoPage(), DemoPage(), DemoPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items(),
        selectedItemColor: Colors.brown[600],
        unselectedItemColor: Colors.black45,
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
      ),
    );
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
        icon: Icon(Icons.fingerprint),
        label: '我的',
      ),
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
