import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const SECONDS = 60;

class MobilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MobilePageState();
}

class MobilePageState extends State<MobilePage> {
  int seconds = SECONDS;
  int timerStatus = 0; // ['获取验证码', '${seconds}s', '重新获取']

  TextField buildTextField(prefixText, hintText, onTextChanged) => TextField(
      onChanged: onTextChanged,
      autofocus: true,
      decoration: InputDecoration(
        hintText: hintText,
        prefixText: prefixText,
        hintStyle: TextStyle(fontSize: 16.sp),
        prefixStyle:
            TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.sp),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        fillColor: Colors.grey[100],
      ));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '手机换绑',
          style: TextStyle(fontSize: 18.sp),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          padding: EdgeInsets.all(12),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SimpleCard(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    buildTextField('手机号：', '请输入换绑后的手机号', (s) {}),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: buildTextField('验证码：', '请输入验证码', (s) {}),
                        ),
                        SizedBox(
                          height: 32.w,
                          width: 108.w,
                          child: OutlinedButton(
                              style: ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.all(0)),
                              ),
                              onPressed: () {
                                if (seconds == 0 || seconds == SECONDS) {
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
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      height: 36.w,
                      width: double.infinity,
                      child: FilledButton(
                        child: Text('确认修改'),
                        onPressed: () {},
                      ),
                    )
                  ]),
                  padding: EdgeInsets.all(12))
            ],
          )),
    );
  }
}
