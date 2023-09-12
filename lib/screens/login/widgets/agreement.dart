import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Agreement extends StatelessWidget {
  final checked;
  final onCheckBoxPress;
  final onSpanPress;
  Agreement(
      {required this.checked,
      required this.onCheckBoxPress,
      required this.onSpanPress});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 12),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                  value: checked,
                  onChanged: (value) {
                    onCheckBoxPress(value);
                  }),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(text: '我已认真阅读，并且同意百家讲坛'),
                      TextSpan(
                        text: '《用户隐私政策》',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            onSpanPress(0);
                          },
                      ),
                      TextSpan(text: '和'),
                      TextSpan(
                        text: '《用户协议》',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            onSpanPress(1);
                          },
                      ),
                      TextSpan(text: '。'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
