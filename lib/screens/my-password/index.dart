import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/buildTextField.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '修改密码',
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
                    buildTextField(context, '旧密码：', '请输入旧密码', (s) {}),
                    SizedBox(
                      height: 12,
                    ),
                    buildTextField(context, '新密码：', '请输入新密码', (s) {}),
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
