import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextField buildTextField(context, prefixText, hintText, onTextChanged) =>
    TextField(
        onChanged: onTextChanged,
        autofocus: false,
        decoration: InputDecoration(
          hintText: hintText,
          // https://stackoverflow.com/questions/58819979/is-there-a-way-to-create-a-text-field-with-a-prefix-that-is-always-visible-in-fl
          // 设置 prefix 不会一直显示
          // prefixIcon 可以接受 widget，然后配合 prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: Text(
            prefixText,
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontSize: 16.sp),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          hintStyle: TextStyle(fontSize: 16.sp),
          // prefixStyle:
          //     TextStyle(),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          fillColor: Colors.grey[100],
        ));
