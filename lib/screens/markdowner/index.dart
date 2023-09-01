import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarkdownerPage extends StatefulWidget {
  final uri;
  final title;

  MarkdownerPage({required this.uri, required this.title});
  @override
  State<StatefulWidget> createState() => MarkdownerPageState();
}

class MarkdownerPageState extends State<MarkdownerPage> {
  String doc = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 18.sp),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: [
            Expanded(
                child: Markdown(
              data: doc,
            ))
          ]),
        ));
  }

  loadDocSource() async {
    var result = await new Dio().get(widget.uri);
    doc = result.data;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDocSource();
  }
}
