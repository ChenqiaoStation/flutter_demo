import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/model/CommonMenu.dart';
import 'package:flutter_demo/screens/my-mobile/index.dart';
import 'package:flutter_demo/screens/my-password/index.dart';
import 'package:flutter_demo/weights/setting-item.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyAccountPage> {
  onMenusPress(id) {
    switch (id) {
      case 'profile':
        break;
      case 'mobile':
        xUtils.useNavigation(context, MobilePage());
        break;
      case 'password':
        xUtils.useNavigation(context, PasswordPage());
        break;
      case 'delete':
        showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text(
                  '确认注销账号？',
                ),
                content: Text(
                  '注销账号后，将删除所有记录，且不可恢复！',
                ),
                actions: [
                  CupertinoDialogAction(
                    child: Text(
                      '确认删除',
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text(
                      '我点错了',
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              );
            });
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '账号设置',
          style: TextStyle(fontSize: 18.sp),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  SimpleCard(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Column(
                      children: [
                        ...CommonMenu.loadAccountMenus()
                            .map((e) => SettingItem(
                                icon: e.icon,
                                title: e.name,
                                onPress: () {
                                  onMenusPress(e.id);
                                }))
                            .toList()
                      ],
                    ),
                  )
                ],
              ))
            ],
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
