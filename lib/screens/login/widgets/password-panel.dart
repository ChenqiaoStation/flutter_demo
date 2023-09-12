import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/buildTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordPanel extends StatelessWidget {
  final onSubmit;
  String mobile = '';
  String password = '';

  PasswordPanel({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          buildTextField(context, '账号：', '请输入账号', (s) {
            onSubmit({'mobile': s});
          }),
          buildTextField(context, '密码：', '请输入密码', (s) {
            onSubmit({'password': s});
          })
        ],
      ),
    );
  }
}
