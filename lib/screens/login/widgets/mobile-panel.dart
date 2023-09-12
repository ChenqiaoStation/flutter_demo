import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/Services.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/weights/buildTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final SECONDS = 60;

class MobilePanel extends StatefulWidget {
  final onSubmit;

  MobilePanel({required this.onSubmit});
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MobilePanel> {
  int seconds = SECONDS;
  int timerStatus = 0; // ['获取验证码', '${seconds}s', '重新获取']
  String mobile = '';
  String code = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          buildTextField(context, '手机号：', '请输入手机号码', (s) {
            setState(() {
              mobile = s;
            });
            widget.onSubmit({'mobile': s});
          }),
          Row(
            children: [
              Flexible(
                  child: buildTextField(context, '验证码：', '请输入验证码', (s) {
                setState(() {
                  mobile = s;
                });
                widget.onSubmit({'password': s});
              })),
              SizedBox(
                height: 32.w,
                width: 108.w,
                child: OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                    ),
                    onPressed: () async {
                      if (seconds == 0 || seconds == SECONDS) {
                        var result = await Services.sendSMS(mobile);
                        if (result['status']) {
                          xUtils.useToast('发送成功 ...');
                        }
                        setState(() {
                          seconds = SECONDS;
                          timerStatus = 1;
                        });
                        Timer.periodic(Duration(seconds: 1), (timer) {
                          if (seconds > 0) {
                            setState(() {
                              seconds--;
                            });
                          } else {
                            setState(() {
                              timerStatus = 2;
                            });
                            timer.cancel();
                          }
                        });
                      } else {}
                    },
                    child: Text(
                      ['获取验证码', '${seconds}s', '重新获取'][timerStatus],
                      style: TextStyle(fontSize: 14.sp),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
