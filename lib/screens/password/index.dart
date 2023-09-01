import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PasswordPageState();
}

class PasswordPageState extends State<PasswordPage> {
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
          '账号设置',
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
                    buildTextField('旧密码：', '请输入旧密码', (s) {}),
                    SizedBox(
                      height: 12,
                    ),
                    buildTextField('新密码：', '请输入新密码', (s) {}),
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
