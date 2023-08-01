import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/player.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
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
        children: [PlayerPage()],
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
        elevation: 1,
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
