import 'package:flutter/material.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestPage extends StatefulWidget {
  const SuggestPage({super.key});

  @override
  State<SuggestPage> createState() => SuggestPageState();
}

class SuggestPageState extends State<SuggestPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int tab = 0;

  loadQuestionItem(index, title, message) => Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            tab = index;
          });
        },
        child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: index == tab
                    ? Theme.of(context).primaryColor.withOpacity(0.08)
                    : Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 1,
                    color: index == tab
                        ? Theme.of(context).primaryColor
                        : Colors.white)),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  message,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.618), fontSize: 12.sp),
                ),
              ],
            )),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(
            '意见征集',
            style: TextStyle(fontSize: 18.sp),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  shrinkWrap: true,
                  children: [
                    // DemoWidget(address: address),
                    SizedBox(
                      height: 12,
                    ),
                    GroupCard(
                        title: '问题类型',
                        child: Row(
                          children: [
                            loadQuestionItem(0, '功能异常', '内容报错、卡顿、错位等'),
                            SizedBox(
                              width: 12,
                            ),
                            loadQuestionItem(1, '产品改进', '反馈产品及服务优化建议')
                          ],
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    GroupCard(
                      title: '反馈描述',
                      child: Column(
                        children: [
                          TextField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                fillColor: Colors.grey[50],
                                hintText: '说说您的建议或问题，以便我们提供更好的服务 ...',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            maxLines: 3,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.only(
                    top: 12,
                    bottom: MediaQuery.of(context).padding.bottom,
                    left: 12,
                    right: 12),
                child: FilledButton(
                  child: Text('提交反馈'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
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
