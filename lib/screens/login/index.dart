import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/Services.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/screens/login/widgets/agreement.dart';
import 'package:flutter_demo/screens/login/widgets/mobile-panel.dart';
import 'package:flutter_demo/screens/login/widgets/password-panel.dart';
import 'package:flutter_demo/screens/login/widgets/way.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<LoginPage> {
  bool isAgree = false;
  int way = 0;
  Map<String, String> params = {'mobile': '', 'password': ''};

  onLoginPress() async {
    if (isAgree) {
      if (xUtils.isPhone(params['mobile']) &&
          (params['password'] ?? "").length >= [6, 4][way]) {
        if (way == 0) {
          var result = await Services.checkPassword(
              params['mobile'], params['password']);
          if (result['status']) {
            xUtils.useToast('登陆成功 ...');
          } else {}
        } else if (way == 1) {
          var result =
              await Services.checkSMS(params['mobile'], params['password']);
          if (result['status']) {
            xUtils.useToast('登陆成功 ...');
          } else {}
        }
      } else {
        xUtils.useToast('请确认填写无误后提交 ...');
      }
    } else {
      xUtils.useToast('请同意用户协议和隐私协议 ...');
    }
  }

  onSubmit(param) {
    setState(() {
      params = Map.of({...params, ...param});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录/注册',
          style: TextStyle(fontSize: 18.sp),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'resources/logo-square.png',
                          height: 128.w,
                          width: 128.w,
                        ),
                        [
                          PasswordPanel(onSubmit: onSubmit),
                          MobilePanel(onSubmit: onSubmit)
                        ][way],
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 36.w,
                          width: double.infinity,
                          child: FilledButton(
                            child: Text('登录'),
                            onPressed: onLoginPress,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              )),
              Way(
                index: -1 * way + 1,
                onPress: () {
                  setState(() {
                    way = -1 * way + 1;
                  });
                  Future.delayed(Duration.zero, () {
                    params = {'mobile': '', 'password': ''};
                    setState(() {});
                  });
                },
              ),
              SizedBox(
                height: 24,
              ),
              Agreement(
                  checked: isAgree,
                  onCheckBoxPress: (value) {
                    setState(() {
                      isAgree = value;
                    });
                  },
                  onSpanPress: (index) {})
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
