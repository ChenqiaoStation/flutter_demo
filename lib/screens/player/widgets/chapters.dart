import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/weights/group-card.dart';
import 'package:flutter_demo/weights/simple-card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chapters extends StatelessWidget {
  final onAuthorPress;
  final onLikePress;

  Chapters({required this.onAuthorPress, required this.onLikePress});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GroupCard(
        title: '选集',
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...(DATAS['data'] as List<dynamic>)
                  .map((e) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                e['capture'],
                                width: 150.w,
                                height: 100.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                                top: 0,
                                left: 0,
                                width: 150.w,
                                height: 100.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.38),
                                      borderRadius: BorderRadius.circular(8)),
                                )),
                            Positioned(
                                child: Container(
                              width: 150.w,
                              padding: EdgeInsets.all(4),
                              child: Text(
                                e['title'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                            Positioned(
                                bottom: 4,
                                right: 4,
                                child: Text(
                                  xUtils.useSeconds2HHmmss(e['duration']),
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ))
                  .toList()
            ],
          ),
        ));
  }
}

const DATAS = {
  "total": 20,
  "data": [
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d-2374.jpg",
      "cctvId": "01f35feb2d9e4ec4ad8c3f3fa666a15d",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/01f35feb2d9e4ec4ad8c3f3fa666a15d/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/01f35feb2d9e4ec4ad8c3f3fa666a15d/main.m3u8",
      "cctvMp4Intervals": "299##300##298##300##299##301##299##275",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/02/01f35feb2d9e4ec4ad8c3f3fa666a15d_h264418000nero_aac32-8.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/04/02/VIDExXT9o0K0qVkSmeQNEFra160402.shtml",
      "createTime": "2016-04-02 12:39:40",
      "duration": 2372,
      "id": "019bef78dc4646b78142f466337b7a34",
      "message":
          "当汉景帝决定废掉长子刘荣，立十子刘彘时，第一个站出来坚决反对的是当时任太子太傅的窦婴，以失败告终，称病不朝。周亚夫也是废立太子的反对者之一，他因此被免相。之后，周亚夫因咎入狱，绝食五天，吐血而死。卫绾受到重用，成为新的太子太傅。刘荣被废后做了临江王，后在中尉府自尽。景帝在位三年，轻徭薄赋、轻刑慎罚、巩固中央集权，为武帝时期国富军强打下坚实的基础。 ",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:00",
      "status": 1,
      "title": "20.汉景帝的心思",
      "updateTime": "2023-06-01 13:57:40"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/26/f7a8e637155a4078be9eac9dd4473e62-1210.jpg",
      "cctvId": "f7a8e637155a4078be9eac9dd4473e62",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/f7a8e637155a4078be9eac9dd4473e62/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/f7a8e637155a4078be9eac9dd4473e62/main.m3u8",
      "cctvMp4Intervals": "298##300##299##300##299##300##300##299##5",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/26/f7a8e637155a4078be9eac9dd4473e62_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/26/VIDE3ScoSVdUxCsbbWWVfVRA160326.shtml",
      "createTime": "2016-03-26 13:34:38",
      "duration": 2402,
      "id": "096a4b9d2f4d43ddb921b8c81d17f293",
      "message":
          "汉文帝的继位是由一个机遇造成的，这个机遇来自于两个方面，一是来自于他本人，在吕后的折磨下，刘邦的八个儿子只剩下两个，二是就连他的母亲也很幸运。他们家的好运还体现在薄姬的儿媳妇，她就是鼎鼎有名的窦太后，她得到了代王的喜爱，而且原皇后和她的孩子全部死掉了，为她铺平了路。明白了干政后果严重的窦太后，很快就改变了态度，但对于很小就被偏袒的刘武来说，让他放弃做皇帝的打算简直是不能接受，他派出杀手刺杀大臣，那么汉景帝又会如何应对呢？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:27",
      "status": 1,
      "title": "13.机遇还是机遇",
      "updateTime": "2023-06-01 13:55:10"
    },
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/03/16/aed14aff60a644888b782759bc40b52f-2386.jpg",
      "cctvId": "aed14aff60a644888b782759bc40b52f",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/aed14aff60a644888b782759bc40b52f/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/aed14aff60a644888b782759bc40b52f/main.m3u8",
      "cctvMp4Intervals": "298##300##299##300##300##299##299##288",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/16/aed14aff60a644888b782759bc40b52f_h264418000nero_aac32-8.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/16/VIDEAHwN8Pek1zEGs46tUK9d160316.shtml",
      "createTime": "2016-03-16 13:51:25",
      "duration": 2384,
      "id": "0fae4f8f081c49a8b0f5be446f65c102",
      "message":
          "汉文帝以藩王身份入主朝廷，一个是北方的匈奴边患，另一个是南越国的赵佗称帝，内部问题只是威胁到他个人皇位，外部问题就上升到国家危机了，任何一个问题解决不好都有可能使西汉政权遭受巨大的威胁。本期节目讲述汉文帝如何破解这两大危机。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:50:13",
      "status": 1,
      "title": "3.破解南北挑战",
      "updateTime": "2023-06-01 13:52:57"
    },
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/03/15/9c5b76d8990045eba8f502314e972cbc-2417.jpg",
      "cctvId": "9c5b76d8990045eba8f502314e972cbc",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/9c5b76d8990045eba8f502314e972cbc/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/9c5b76d8990045eba8f502314e972cbc/main.m3u8",
      "cctvMp4Intervals": "299##298##300##300##300##299##300##298##18",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/15/9c5b76d8990045eba8f502314e972cbc_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/15/VIDEybqsAjAbqoSWAUxGzQYZ160315.shtml",
      "createTime": "2016-03-15 13:25:11",
      "duration": 2415,
      "id": "1070eadd60e846a8ab896a1026374234",
      "message":
          "西汉时期，大臣们选择了一位容易控制的皇子——刘恒做了皇帝，刘恒成为了西汉第三位皇帝。然而刘恒登基之后，却并没有像大臣们想象中的那样任他们摆布，反而刘恒像完全变了一个人。本期节目将讲述开创了“文景之治”的汉文帝登基之后烧的几把“火”。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:50:16",
      "status": 1,
      "title": "2.文帝即位",
      "updateTime": "2023-06-01 13:52:39"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/fmspic/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4-2350.jpg",
      "cctvId": "e97e4a4bacd941b89ac5b1c81f1979f4",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/e97e4a4bacd941b89ac5b1c81f1979f4/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/e97e4a4bacd941b89ac5b1c81f1979f4/main.m3u8",
      "cctvMp4Intervals": "298##299##301##299##300##300##298##251",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/31/e97e4a4bacd941b89ac5b1c81f1979f4_h264418000nero_aac32-8.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/31/VIDEQ4KnpNwIRovs0u4CpDkN160331.shtml",
      "createTime": "2016-03-31 13:38:18",
      "duration": 2349,
      "id": "2a3303b2498941d1b2d358219b13da49",
      "message":
          "当汉景帝为平定吴楚七国之叛，焦虑、头疼之时，他的后宫并未让他省心，一场争夺皇太子之位的皇储暗战，正在激烈地上演，参与到这场皇储暗战的大体可以分为两类人，一是有意介入者，二是无意介入者，那么从有太皇太后撑腰的薄皇后到儿子已经被立为太子的栗姬，从一心想让自己女儿成为太子妃的馆陶公主，到不仅智商高而且情商也很高的王美人，到底是谁无意介入，却被卷入了汉景帝的皇储之争，又是谁对主动出击，对太子之位势在必得？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:07",
      "status": 1,
      "title": "18.一场没有硝烟的暗战",
      "updateTime": "2023-06-01 13:57:06"
    },
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/03/25/bb3c01b766594d6ea661dd08afa09f35-1210.jpg",
      "cctvId": "bb3c01b766594d6ea661dd08afa09f35",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/bb3c01b766594d6ea661dd08afa09f35/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.cntv.cdn20.com/asp/hlsaudio/hls/main/0303000a/3/default/bb3c01b766594d6ea661dd08afa09f35/main.m3u8",
      "cctvMp4Intervals": "299##298##300##300##300##300##299##298##13",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/25/bb3c01b766594d6ea661dd08afa09f35_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/25/VIDE7mwVBYq0ERn8OzvJ5flo160325.shtml",
      "createTime": "2016-03-25 13:11:37",
      "duration": 2410,
      "id": "333f327ccdeb467eb50bd78571b0bf8d",
      "message":
          "汉文帝刘恒是西汉的第三位皇帝，他23岁继位，在位23年。面对大臣的冲撞，汉文帝为什么沉得住气？他任性宠幸的一个宦官，最后为什么贫病交加而死。汉文帝可以说是历史上少有的明君仁君，他以德政治理天下，从而开创了一个国泰民安的盛世。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:30",
      "status": 1,
      "title": "12.汉文帝的多面人生",
      "updateTime": "2023-06-01 13:54:53"
    },
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3-2419.jpg",
      "cctvId": "61cab7aa9bb3411eb6c30983b8724fa3",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/61cab7aa9bb3411eb6c30983b8724fa3/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.cntv.cdn20.com/asp/hlsaudio/hls/main/0303000a/3/default/61cab7aa9bb3411eb6c30983b8724fa3/main.m3u8",
      "cctvMp4Intervals": "300##298##300##300##299##299##299##300##20",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/24/61cab7aa9bb3411eb6c30983b8724fa3_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/24/VIDERgSs4RyBe3vgjb6yZ7ZV160324.shtml",
      "createTime": "2016-03-24 12:40:48",
      "duration": 2417,
      "id": "6b86904bad6245fc976c28a54cc2714e",
      "message":
          "汉文帝前元六年，汉文帝的亲弟弟淮南王刘长竟然召集了70个人，用40辆车准备谋反，很快他就兵败被抓进了监狱，随后不久，淮南王刘长竟然绝食而亡，汉文帝接到这个噩耗放声痛哭。可是让人奇怪的是不管是当时还是后世，人们却认为对于淮南王刘长的死，汉文帝负有不可推卸的责任。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:35",
      "status": 1,
      "title": "11.兄弟之间",
      "updateTime": "2023-06-01 13:55:29"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd-2405.jpg",
      "cctvId": "e7538d5e8f7c4e34a5b59d94bbc53ddd",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/e7538d5e8f7c4e34a5b59d94bbc53ddd/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/e7538d5e8f7c4e34a5b59d94bbc53ddd/main.m3u8",
      "cctvMp4Intervals": "298##301##299##300##300##300##298##301##6",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/17/e7538d5e8f7c4e34a5b59d94bbc53ddd_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/17/VIDEjOwtT8KGptNXmlM8yetk160317.shtml",
      "createTime": "2016-03-17 13:03:26",
      "duration": 2403,
      "id": "7240aea0acc44062b2fb3266af813d56",
      "message":
          "刘邦第四个儿子代王刘恒意外地继承了皇位，然而继位之初，汉文帝刘恒却面临着很多难题。其中最为关键的一个问题是汉文帝由于长期在自己的封地生活，因此在京城缺乏值得信任的亲信可用。那么面对这些问题，汉文帝将如何运筹帷幄，他想要培植自己的力量究竟需要做哪些工作呢？ ",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:50:08",
      "status": 1,
      "title": "4.要有自己的力量",
      "updateTime": "2023-06-01 13:53:19"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/20/f6be90f1f7294708be0d563afeb1a421-2409.jpg",
      "cctvId": "f6be90f1f7294708be0d563afeb1a421",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/f6be90f1f7294708be0d563afeb1a421/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.cntv.cdn20.com/asp/hlsaudio/hls/main/0303000a/3/default/f6be90f1f7294708be0d563afeb1a421/main.m3u8",
      "cctvMp4Intervals": "299##300##299##300##298##301##298##300##10",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/20/f6be90f1f7294708be0d563afeb1a421_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/20/VIDE0NafWKbtVMj8Hp7Ne0qX160320.shtml",
      "createTime": "2016-03-20 12:57:49",
      "duration": 2406,
      "id": "78deedf62cd147e7b29902619bb545c5",
      "message":
          "汉文帝着力培养的新官僚群体，是一个庞大的队伍，晁错给汉文帝上书，里面所讲到的内容，深得汉文帝之心。晁错不仅文采了得，胆识也异于常人，对于领兵打仗，战略战术也是运筹帷幄。西汉初年，帝国面临的一个巨大挑战就是为了对付漫长边境线上的匈奴人，汉朝军队多点作战，消耗巨大却收效甚微，那么晁错面对这样一个问题会有什么解决办法呢？汉文帝着力打造的官僚群体中既有文臣又有武将，武将的代表人物就是周亚夫。（《百家讲坛》 20160320 文景之治 7 有文又有武）",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:53",
      "status": 1,
      "title": "7.有文又有武",
      "updateTime": "2023-06-01 13:54:06"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/fmspic/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4-2411.jpg",
      "cctvId": "b7b37c56d5644ed594f9c86c210cc4c4",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/b7b37c56d5644ed594f9c86c210cc4c4/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/b7b37c56d5644ed594f9c86c210cc4c4/main.m3u8",
      "cctvMp4Intervals": "298##300##300##301##298##299##299##300##13",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/19/b7b37c56d5644ed594f9c86c210cc4c4_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/19/VIDEiNXIXjNXOlYmXzJ2QkhW160319.shtml",
      "createTime": "2016-03-19 13:00:49",
      "duration": 2409,
      "id": "8b5e816470444f49b86cb175bb5e5915",
      "message":
          "他十年默默无闻却被皇帝赏识，究竟是怎样的机缘巧合，他卓越的才能如何让汉文帝刮目相看。汉文帝继位之后，为了培植自己的力量，不断地提拔能人贤士，参与朝政，这其中不能不提到一个重要人物，那就是廷尉张释之。作为九卿之一，张释之如同汉文帝的“眼”，让汉文帝在复杂与艰难的王朝发展中看清了前行的方向，然而他的脱颖而出却历经磨难。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:58",
      "status": 1,
      "title": "6.你是我的眼",
      "updateTime": "2023-06-01 13:53:54"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/fmspic/2016/03/21/2e690371440247f780f3795458f897ea-2402.jpg",
      "cctvId": "2e690371440247f780f3795458f897ea",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/2e690371440247f780f3795458f897ea/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.cntv.cdn20.com/asp/hlsaudio/hls/main/0303000a/3/default/2e690371440247f780f3795458f897ea/main.m3u8",
      "cctvMp4Intervals": "298##300##300##299##300##299##301##299##3",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/21/2e690371440247f780f3795458f897ea_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/21/VIDEru8tEfuAvPC9b1hjjGh2160321.shtml",
      "createTime": "2016-03-21 13:43:31",
      "duration": 2399,
      "id": "8ee7efffb8394e088e7097f7d24972fc",
      "message":
          "汉文帝时期，一个弱不禁风的女子千里迢迢从齐地，也就是今天的山东来到都城长安，并且上书皇帝，冒死喊冤。这位小女子的惊人之举竟然惊动了大汉天子汉文帝。因为她的这个举动，汉文帝毅然决然地废掉了一部恶法，这位女子便是淳于缇萦。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:49",
      "status": 1,
      "title": "8.一个女人废了一部法",
      "updateTime": "2023-06-01 13:54:22"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/fmspic/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527-1211.jpg",
      "cctvId": "3a36486b2fd647929b3c7b3fc0acb527",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/3a36486b2fd647929b3c7b3fc0acb527/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/3a36486b2fd647929b3c7b3fc0acb527/main.m3u8",
      "cctvMp4Intervals": "299##299##299##301##299##299##299##300##18",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/22/3a36486b2fd647929b3c7b3fc0acb527_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/22/VIDEqUgoMNXVv9wJ6x5ggDqH160322.shtml",
      "createTime": "2016-03-22 13:35:13",
      "duration": 2415,
      "id": "9fd39ccaacbd43bdb8a3bf4645b3f10d",
      "message":
          "汉文帝登基以来，不断提拔能人贤士参与朝政，让自己这个“外来皇帝”在朝中打开了局面。他的一系列举措令人感到他是一个有作为的皇帝。但汉文帝也在历史上留下了不光彩的一面，他为了巩固自己的政权，与重臣周勃展开了较量。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:44",
      "status": 1,
      "title": "9.重臣周勃",
      "updateTime": "2023-06-01 13:54:36"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4-1211.jpg",
      "cctvId": "ff502fa336ee4f4393aaab02fa7528f4",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/ff502fa336ee4f4393aaab02fa7528f4/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/ff502fa336ee4f4393aaab02fa7528f4/main.m3u8",
      "cctvMp4Intervals": "299##298##301##300##299##299##301##300##5",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/30/ff502fa336ee4f4393aaab02fa7528f4_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/30/VIDEMeDnY7CSRaNeQcYCQF2R160330.shtml",
      "createTime": "2016-03-30 12:51:11",
      "duration": 2403,
      "id": "a3d7a284e49e4a8fbb031acd582bd866",
      "message":
          "公元前154年，汉景帝下旨杀了晁错之后，没想到吴王刘濞并不领情，反而西进猛攻梁国，这时，汉景帝终于明白“诛晁错 清君侧”不过是吴王起兵的幌子，他的目标是皇位。汉景帝派周亚夫率兵赶往前线，抵御吴楚联军。那么面对声势浩大的数十万吴楚大军，周亚夫有什么好的退敌之策吗？吴王刘濞精心准备三十年，为什么仅仅三个月就兵败被杀？ ",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:11",
      "status": 1,
      "title": "17.三个月的战争",
      "updateTime": "2023-06-01 13:56:33"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/14/0830dbc87d304a57818b14084ce8380f-1210.jpg",
      "cctvId": "0830dbc87d304a57818b14084ce8380f",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/0830dbc87d304a57818b14084ce8380f/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/0830dbc87d304a57818b14084ce8380f/main.m3u8",
      "cctvMp4Intervals": "299##300##300##297##300##300##298##302##17",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/14/0830dbc87d304a57818b14084ce8380f_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/14/VIDEhlpt1YWEjiaAcy22pq2V160314.shtml",
      "createTime": "2016-03-14 13:23:11",
      "duration": 2413,
      "id": "a857e5207199410a9d12095440a38104",
      "message":
          "汉景帝统治时期的治世，汉初社会经济衰弱，文景二帝推崇黄老之术，采取各种政策，对周边国家也不轻易出兵，维持和平。随着生产日渐得到恢复，出现了稳定现象，人们的生活水平得到了很大程度的提升。然而汉文帝的登基却不是一帆风顺的，那么汉文帝刘恒到底是怎么脱颖而出登上皇位的？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:50:20",
      "status": 1,
      "title": "1.盛世的序曲",
      "updateTime": "2023-06-01 13:52:22"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/04/01/17f337256ca04b1f8bef4565ebb9019a-1210.jpg",
      "cctvId": "17f337256ca04b1f8bef4565ebb9019a",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/17f337256ca04b1f8bef4565ebb9019a/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/17f337256ca04b1f8bef4565ebb9019a/main.m3u8",
      "cctvMp4Intervals": "299##299##299##300##300##299##301##278",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/04/01/17f337256ca04b1f8bef4565ebb9019a_h264418000nero_aac32-8.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/04/01/VIDEqRIZ6I1Yyt1ATfUKGaMn160401.shtml",
      "createTime": "2016-04-01 12:54:37",
      "duration": 2377,
      "id": "a9747b80558b44298d79275e3ef90baf",
      "message":
          "公元前151年，汉景帝下诏废薄皇后。第二年，汉景帝下诏废太子刘荣为临江王，但无论是在废皇后之后，还是在废太子之后，汉景帝都一直迟迟没有宣布新的皇后和新的太子人选。在这场激烈的皇储暗战中，除了废太子刘荣的母亲栗姬犯下了一系列的致命错误之外，还有一个惹不起的女人，在整个太子废立事件中起到了关键的作用。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:03",
      "status": 1,
      "title": "19.该来的都来了",
      "updateTime": "2023-06-01 13:56:49"
    },
    {
      "capture":
          "https://p2.img.cctvpic.com/fmspic/2016/03/18/500681816e5b4bbc91ee76567fa7c15d-1211.jpg",
      "cctvId": "500681816e5b4bbc91ee76567fa7c15d",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/500681816e5b4bbc91ee76567fa7c15d/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/500681816e5b4bbc91ee76567fa7c15d/main.m3u8",
      "cctvMp4Intervals": "298##300##300##300##298##300##299##299##20",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/18/500681816e5b4bbc91ee76567fa7c15d_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/18/VIDEV7IUqwQYXbDhja3VT7Zw160318.shtml",
      "createTime": "2016-03-18 13:31:44",
      "duration": 2417,
      "id": "b2b3ba9956f049439bfee21c5c067bc9",
      "message":
          "汉文帝继位之后下定决心要整合皇权体制，以巩固和加强国家政权的运转能力，而让他没有想到的是一个名叫贾谊的年轻人以其天才的智慧和超越时代的眼光带给了汉文帝巨大的思想冲击。为了延揽这样的人才，汉文帝甚至想越级提拔贾谊，然而朝中一批以周勃等为代表的老臣、功臣却坚决反对。那么贾谊究竟有怎样的本事让汉文帝迫不及待地想要提拔他呢？而大臣的坚决发对隐藏着怎样不可言说的秘密呢？这样一个天才人物缘何会英年早逝呢？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:50:03",
      "status": 1,
      "title": "5.一个天才的浮沉",
      "updateTime": "2023-06-01 13:53:37"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/23/65d96342ffc34314b126ea524383de99-1210.jpg",
      "cctvId": "65d96342ffc34314b126ea524383de99",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/65d96342ffc34314b126ea524383de99/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/65d96342ffc34314b126ea524383de99/main.m3u8",
      "cctvMp4Intervals": "298##301##300##298##301##299##300##300##21",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/23/65d96342ffc34314b126ea524383de99_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/23/VIDEQpIIYBSSbgc9erGFzqDt160323.shtml",
      "createTime": "2016-03-23 12:59:44",
      "duration": 2420,
      "id": "bea3b34c00da4c848237c346285ed440",
      "message":
          "在铲除诸吕的过程中，刘邦的三个孙子显得非常抢眼，他们分别是齐王刘襄、朱虚侯刘章、东牟侯刘兴居，可以说他们为汉文帝登上皇位立下汗毛功劳。然而在汉文帝上位的前三年，刘襄、刘章相继死去，刘兴居自杀，那么这一切究竟是怎么发生的？这些皇孙的死与汉文帝有什么关系呢？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:40",
      "status": 1,
      "title": "10.三个皇孙",
      "updateTime": "2023-06-01 13:55:58"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/fmspic/2016/03/28/988dca13f0da4102ac4ec5247f002b3b-2400.jpg",
      "cctvId": "988dca13f0da4102ac4ec5247f002b3b",
      "cctvM3u8":
          "https://hotasp.v.cntv.cn/asp/hls/main/0303000a/3/default/988dca13f0da4102ac4ec5247f002b3b/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://hwdhls.cntv.qcloudcdn.com/asp/hlsaudio/hls/main/0303000a/3/default/988dca13f0da4102ac4ec5247f002b3b/main.m3u8",
      "cctvMp4Intervals": "298##300##301##298##299##300##300##299##1",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/28/988dca13f0da4102ac4ec5247f002b3b_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/28/VIDErHfbPHPncumx2UFnqbX3160328.shtml",
      "createTime": "2016-03-28 13:06:39",
      "duration": 2397,
      "id": "c14efe51ee5245bfb06c28d5377080b4",
      "message":
          "汉景帝削藩触动了诸侯们的利益，吴王刘濞密谋造反，并说动胶西王刘卬共同起兵，但是胶西王的大臣们集体进谏反对同盟。吴王刘濞不但没有死心，还拉拢其他诸侯国一同起兵造反。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:19",
      "status": 1,
      "title": "15.吴楚七国之乱",
      "updateTime": "2023-06-01 13:55:44"
    },
    {
      "capture":
          "https://p3.img.cctvpic.com/fmspic/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2-2402.jpg",
      "cctvId": "402442da1d1c41faacd7aaadaeb80cb2",
      "cctvM3u8":
          "https://hwhls.cntv.qcloudcdn.com/asp/hls/main/0303000a/3/default/402442da1d1c41faacd7aaadaeb80cb2/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/402442da1d1c41faacd7aaadaeb80cb2/main.m3u8",
      "cctvMp4Intervals": "298##299##299##300##300##298##301##298##3",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/27/402442da1d1c41faacd7aaadaeb80cb2_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/27/VIDEpJJYOqFNkIrQjb9cJF8M160327.shtml",
      "createTime": "2016-03-27 12:59:56",
      "duration": 2400,
      "id": "ccb5bae321854f58ac4864c65e1faf50",
      "message":
          "刘启在做太子的时候曾经因为杀人造成轰动一时的奇闻，而这桩命案也因此埋下了一粒仇恨的种子，在他当上皇帝后，大麻烦随即而来，一些诸侯王居然联合起来举兵叛乱，这直接威胁到了汉景帝和整个西汉王朝的命运。",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:23",
      "status": 1,
      "title": "14.命案埋下的仇恨",
      "updateTime": "2023-06-01 13:57:23"
    },
    {
      "capture":
          "https://p5.img.cctvpic.com/fmspic/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e-2420.jpg",
      "cctvId": "f6b3b793f3f04a4d9d76b113ddf5205e",
      "cctvM3u8":
          "https://hls.cntv.cdn20.com/asp/hls/main/0303000a/3/default/f6b3b793f3f04a4d9d76b113ddf5205e/main.m3u8?maxbr=2048",
      "cctvMp3":
          "https://dhls.v.cntv.cn/asp/hlsaudio/hls/main/0303000a/3/default/f6b3b793f3f04a4d9d76b113ddf5205e/main.m3u8",
      "cctvMp4Intervals": "298##300##299##300##299##300##299##301##20",
      "cctvMp4Urls":
          "https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-1.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-2.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-3.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-4.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-5.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-6.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-7.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-8.mp4##https://hot.v.cntv.cn/flash/mp4video50/TMS/2016/03/29/f6b3b793f3f04a4d9d76b113ddf5205e_h264418000nero_aac32-9.mp4",
      "cctvWeb":
          "https://tv.cctv.com/2016/03/29/VIDE016S3njxv77rTeJi7Nb1160329.shtml",
      "createTime": "2016-03-29 12:47:35",
      "duration": 2417,
      "id": "fbdd64a6e889480b8bd633f1fd9af09c",
      "message":
          "吴王刘濞打出了“清君侧，诛晁错”的旗号，叛军气势汹汹，“七国之乱”兵锋强盛。汉景帝一方面派出几员大将出征应对，一方面却又将重臣晁错腰斩灭族。然而诛杀晁错并不能让七国退兵，那么汉景帝冤杀大臣究竟有着怎样的内幕？晁错对于自己的悲剧下场事先有没有预料，而名将周亚夫又是怎样占据了战场的主动呢？",
      "seriesId": "2113ff310e43451281a2a566c0ffb054",
      "spiderTime": "2023-06-01 13:49:15",
      "status": 1,
      "title": "16.不得已的选择",
      "updateTime": "2023-06-01 13:56:14"
    }
  ],
  "success": true
};
