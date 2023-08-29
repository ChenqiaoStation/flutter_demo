import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:flutter_demo/model/SimpleKeyValue.dart';
import 'package:flutter_demo/weights/item-series-last.dart';
import 'package:flutter_demo/weights/items-keywords-trend.dart';
import 'package:flutter_demo/weights/items-series-tags.dart';
import 'package:flutter_demo/weights/items-serieses-latest.dart';
import 'package:flutter_demo/weights/items-serieses-shuffle.dart';
import 'package:flutter_demo/weights/items-teachers-shuffle.dart';
import 'package:flutter_demo/weights/my-swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeriesesPage extends StatefulWidget {
  SeriesesPage({super.key});
  @override
  State<StatefulWidget> createState() => SeriesesState();
}

class SeriesesState extends State<SeriesesPage>
    with AutomaticKeepAliveClientMixin {
  double width = 0;
  double height = 0;
  int currentIndex = 0;
  String selectYear = '2009';
  String selectSort = '';

  final CarouselController swiper = CarouselController();

  onYearPress(item) {
    selectYear = item.value;
    setState(() {});
  }

  onSortPress(item) {
    selectSort = item.value;
    setState(() {});
  }

  final datas = [
    {
      "capture":
          "https://p2.img.cctvpic.com/imagepic/handaifengyunrenwuzhixiangyu/ibugu/images/img1270716811926907.jpg",
      "clickCount": 0,
      "id": "31cd09a69c8942b295cbfca49b15dd51",
      "likeCount": 0,
      "message":
          "他二十七岁，就从一个普通的反秦将领一跃成为分封十八路诸侯的“西楚霸王”；他三十一岁，就兵败乌江，自杀身亡。这就是以为傲视群雄的西楚霸王，演绎了一段英雄美人的爱情传奇。项羽在现实的政治斗争中，败给了刘邦，但是中国的老百姓并没有按照成者王侯败者贼的观点去看待项羽。人们今天谈到项羽，要么说他是一个悲剧英雄，要么说他是失败的英雄，总而言之，承认项羽是个英雄，这就是项羽的不朽。那么项羽的悲剧是一个什么样的悲剧？",
      "title": "汉代风云人物之项羽"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/imagepic/handaifengyunrenwuzhilvhou/ibugu/images/img1270715782833506.jpg",
      "clickCount": 0,
      "id": "0efdf292c6404a5c93982eff92b64d5b",
      "likeCount": 0,
      "message":
          "她是我国历史上第一个皇权独揽的女人；她为人刚毅，辅佐刘邦平定天下；她阴狠毒辣，掌权十五年，诛功臣，杀皇子，满手血腥，以至“吕后”成为后世“狠毒”的代名词。历史上的吕后究竟是怎样的一个女人？她在中华民族的历史进程中，究竟起到了什么作用",
      "title": "汉代风云人物之吕后"
    },
    {
      "capture":
          "http://p1.img.cctvpic.com/imagepic/wangliqunjiangshiji/ibugu/images/img1270002065883131.jpg",
      "clickCount": 0,
      "id": "788060a35a2742c685fd5592f0bb93de",
      "likeCount": 0,
      "message":
          "激发起王立群对古代文学狂热的是《史记》，留校任教后他讲授的汉魏六朝文学中有《史记》，在《百家讲坛》他面向全国观众讲述的仍是《史记》——从来没有一本书能够像《史记》一样，对王立群产生了如此深远的影响。",
      "title": "王立群读《史记》之汉武帝"
    },
    {
      "capture":
          "http://p1.img.cctvpic.com/imagepic/history/mingwangqingxingliushinian/ibugu/images/img1265195101892851.jpg",
      "clickCount": 0,
      "id": "607731eeed8448778fee6f3666ef7606",
      "likeCount": 0,
      "message":
          "明亡清兴的60年，是中国历史上天崩地解、山谷陵替、格局剧变、悲欢离合的时代。在明亡清兴的历史舞台上：格局，雄伟壮阔；人物，群星灿烂；事件，繁复跌宕；故事，生动有趣。人们都在表现，也都在表演：真与假、善与伪、美与丑，智与愚、勇与怯、廉与贪……",
      "title": "明亡清兴六十年"
    },
    {
      "capture":
          "http://p1.img.cctvpic.com/imagepic//C19610/ibugu/images/img1274171001076850.jpg",
      "clickCount": 0,
      "id": "85d01948d9ca41b38ecaa106a4952bf2",
      "likeCount": 0,
      "message":
          "在中国历史上，曾有这样一位皇帝，他生于乱世，长在皇宫，年轻时封王守边，却在盛年时起兵造反，最终从侄子的手中夺下了皇位。他就是明朝永乐皇帝朱棣。朱棣虽然弑君夺位，却开创了一个辉煌的永乐盛世：永乐时代的中国，是当之无愧的世界第一大国，他派郑和六下西洋，把中华文明远播海外；他开疆拓土，奠定了今日中国版图的统一与完整。朱棣一生成就斐然，然而究竟是什么原因，却让他的威名被淡忘在了历史的红尘深处？有人说他暴戾成性、杀人如麻；也有人说他心理扭曲、人格分裂。这样一位皇帝，在他的人生中曾有过怎样的心路历程，六百年后的我们，又该怎样去读懂他和他所开创的盛世呢？中国社会科学院研究员，中国明史学会会长商传先生，新中国朱棣研究第一人。从今天开始，他将带领我们一同去探寻永乐皇帝朱棣的前世今生。",
      "title": "永乐大帝"
    },
    {
      "capture":
          "https://p1.img.cctvpic.com/imagepic//C22909/ibugu/images/img1294277005316437.jpg",
      "clickCount": 0,
      "id": "115b2dd712484412a37f6561a617055b",
      "likeCount": 0,
      "message":
          "三言二拍是指明代五本著名传奇短篇小说集及拟话本集的合称。“三言”即《喻世明言》、《警世通言》、《醒世恒言》的合称。作者为明代冯梦龙。“二拍”则是中国拟话本小说集《初刻拍案惊奇》和《二刻拍案惊奇》的合称。作者凌蒙初。虽然“三言”“二拍”只是明朝末年的一部通俗流行小说集锦，然而历经几百年之后，它竟然成为了一部跨越古今的经典著作，堪称一部奇书。比如我们熟悉的“杜十娘怒沉百宝箱”、“卖油郎独占花魁”等都是出自这部奇书。这部奇书有两奇，第一奇是内容奇，“三言”“二拍”通过二百篇短篇小说，展现了一幅宋、元、明时期的市井生活长卷，堪称文学史上的“清明上河图”；第二其是作者奇，“三言”“二拍”的作者冯梦龙和凌蒙初，原本是两个失意文人，他们不经意间的一个机缘，就创造了一部传世奇书。在鱼龙混杂的白话小说创作中，冯梦龙和凌蒙初，这两位文人凌空出世，引领了通俗小说创作之风骚。那么为什么那么多人写，只有冯梦龙和凌蒙初两人写出了流传后世的经典之作呢？他们究竟具有怎样的传奇之处呢？",
      "title": "三言二拍"
    },
    {
      "capture":
          "http://p4.img.cctvpic.com/imagepic/zhengshuoqingchaoershisichenzhiduoergun/ibugu/images/img1270714431352411.jpg",
      "clickCount": 0,
      "id": "625d8308ad1d45db8e24ece3841fc098",
      "likeCount": 0,
      "message":
          "一个叱咤风云但却又失意一生的男人，一个温柔多情但却又深藏心机的女人。五位大清开国史上最为强势的男人和女人。在他们之间将上演一场怎样的刀光剑影、爱恨情仇？公元1612年冬，多尔衮在努尔哈赤征战四方的漫天烽火中降生了，已经53岁的努尔哈赤，对于他的这个第十四个儿子宠爱有加，但他并不知道，恰恰就是这个儿子在自己死后的许多年里始终无法登上大清王朝皇帝的宝座，也恰恰就是这个儿子竟然完成了努尔哈赤一生都没有能够实现的梦想，那就是逐鹿中原，定鼎北京。多尔衮做为努尔哈赤的亲生儿子一生兵权在握，征战无数，为大清王朝日后统一中国立下了汗马功劳，但他为何却始终无法登上至高无上的皇帝宝座？",
      "title": "正说清朝二十四臣之多尔衮"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-21_04-09-01.jpg",
      "clickCount": 0,
      "id": "5ba5b126ae98453689253df5f0a4cb7a",
      "likeCount": 0,
      "message":
          "公元1782年9月的一个清晨，一名男婴降生在紫禁城内，他就是后来的道光皇帝，爱新觉罗·旻宁。当道光皇帝降生的那一刻，也许他的父亲嘉庆皇帝和他的爷爷乾隆皇帝谁都没有意识到这位皇子在未来将要承担的责任与危难。数十年后，当这位皇子登上皇位君临天下的时候，他和他的王朝所面临的是中国从未有过的变局，英吉利的坚船利炮叩开了闭关锁国的大门，中英之间的鸦片战争以清政府丧权辱国、割地赔款为终结。但是，中国的沉沦却才刚刚开始，这个具有悠久历史的国度，身不由己地被拖入了世界的洪流，从而拉开了中国近代大变革的序幕......",
      "title": "道光与鸦片战争"
    },
    {
      "capture":
          "http://p1.img.cctvpic.com/imagepic/humanities/hongloumengbashihuihouzhengushi/ibugu/images/img1268812853569157.jpg",
      "clickCount": 0,
      "id": "9e72bb7456a34d389262a06e6e05b46e",
      "likeCount": 0,
      "message":
          "众所周知，世界上似乎没有哪一本书能像《红楼梦》这样引起人们喋喋不休的争论，也没有哪一本书能像《红楼梦》这样引发那么多人关注和研究。究其原因，最主要的大概就是曹雪芹留下了一本不完整的书稿，这就给后人留下了巨大的话语空间，《红楼梦》就像断臂的维纳斯一样，多少人在想象着它完整的样子。那么人们是不是真的就不能窥见《红楼梦》的全貌了呢？著名作家刘心武先生通过多年对《红楼梦》的研究，他认为全本的《红楼梦》是存在过的，《红楼梦》八十回后的故事是可以探佚出来的，高鹗续写的《红楼梦》后四十回不符合曹雪芹的原笔原意。那么八十回后曹雪芹的《红楼梦》写的是什么？全本的《红楼梦》真的存在过吗？著名作家刘心武先生为您讲述《红楼梦》八十回后的真故事。",
      "title": "《红楼梦》八十回后真故事"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-22_19-16-35.jpg",
      "clickCount": 0,
      "id": "26d8633c268743cabfad6b5ad448f442",
      "likeCount": 0,
      "message": "有人说纪晓岚风流倜傥、铁齿铜牙，有人说他长相难看，说话口吃，历史上真实的纪晓岚究竟相貌如何？",
      "title": "正说清朝二十四臣之纪晓岚"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-22_19-37-26.jpg",
      "clickCount": 0,
      "id": "fd2b6d3e9ab84df4ae62f82ef03b61f8",
      "likeCount": 0,
      "message": "在真实的历史上，吴三桂这样一个传奇的人物，究竟有着怎样传奇的家世和成长经历，竟然在二十多岁的时候成为明朝驻守辽东的大将？",
      "title": "正说清朝二十四臣之吴三桂"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-22_19-51-52.jpg",
      "clickCount": 0,
      "id": "41950b34e29a46cfa39b1c25e7cf4418",
      "likeCount": 0,
      "message":
          "1931年1月、5月和9月、1933年3月中央苏区军民团结一致，先后打破了蒋介石数十万大军对中央苏区进行的四次大规模“围剿”，夺取了反“围剿”的胜利。巩固和扩大了中央苏区。1931年11月，第一次全国苏维埃代表大会在瑞金举行，宣布中华苏维埃共和国临时中央政府成立，毛泽东任主席。",
      "title": "王树增讲长征"
    },
    {
      "capture":
          "https://p4.img.cctvpic.com/imagepic//C19240/ibugu/images/img1272362358499642.jpg",
      "clickCount": 0,
      "id": "a0ae0cb39db24fd8a6dcb9b3f1244a38",
      "likeCount": 0,
      "message":
          "那是一段令人难以想象的岁月，那是一群令人难以忘怀的人们。上个世纪的六十年代，河南省林县的几十万百姓，为了解决困扰了他们祖祖辈辈的吃水难问题，硬是靠着一双双手，凭着自己的血肉之躯，在太行山深处的悬崖峭壁上，开凿出了一条全长1500公里的人工天河，将远在山西境内的漳河水引入了他们千百年来饱受干旱之苦的故土，这就是闻名世界人工天河“红旗渠”。这是一个为我们所熟悉的名字，这又是一段让我们感到陌生的故事。",
      "title": "红旗渠的故事"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_10-25-00.jpg",
      "clickCount": 0,
      "id": "949f65d7769c4ccb99e969e009f71bfe",
      "likeCount": 0,
      "message":
          "《刘心武揭秘〈红楼梦〉》是著名作家刘心武在CCTV所作的红学系列讲座及其出版的同名书籍，这也是他多年研究《红楼梦》的心血结晶。他从“金陵十二钗”中的秦可卿着手，详细考证了书中各人物的生活原型，复原了《红楼梦》诞生时的时代风貌。",
      "title": "刘心武揭秘《红楼梦》之秦可卿"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_10-25-00.jpg",
      "clickCount": 0,
      "id": "7a700036dc4d4bf684f8a821a849747f",
      "likeCount": 0,
      "message":
          "《刘心武揭秘〈红楼梦〉》是著名作家刘心武在CCTV所作的红学系列讲座及其出版的同名书籍，这也是他多年研究《红楼梦》的心血结晶。他从“金陵十二钗”中的史湘云着手，详细考证了书中各人物的生活原型，复原了《红楼梦》诞生时的时代风貌。",
      "title": "刘心武揭秘《红楼梦》之史湘云"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_10-25-00.jpg",
      "clickCount": 0,
      "id": "dacaf1b5f0d340bf95b7658a71267077",
      "likeCount": 0,
      "message":
          "《刘心武揭秘〈红楼梦〉》是著名作家刘心武在CCTV所作的红学系列讲座及其出版的同名书籍，这也是他多年研究《红楼梦》的心血结晶。他从“金陵十二钗”中的秦可卿着手，详细考证了书中各人物的生活原型，复原了《红楼梦》诞生时的时代风貌。",
      "title": "刘心武揭秘《红楼梦》之贾宝玉"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_10-25-00.jpg",
      "clickCount": 0,
      "id": "4bfdcb317b924e239d107785ba6ce808",
      "likeCount": 0,
      "message":
          "《刘心武揭秘〈红楼梦〉》是著名作家刘心武在CCTV所作的红学系列讲座及其出版的同名书籍，这也是他多年研究《红楼梦》的心血结晶。他从“金陵十二钗”中的秦可卿着手，详细考证了书中各人物的生活原型，复原了《红楼梦》诞生时的时代风貌。",
      "title": "刘心武揭秘《红楼梦》之薛宝钗"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_16-51-02.jpg",
      "clickCount": 0,
      "id": "6635bb949a574c2698e2644af0cace04",
      "likeCount": 0,
      "message":
          "胡雪岩是中国晚清时期的一位传奇人物，我们今天讲胡雪岩，并不是把他当作一个历史人物来研究，因为胡雪岩死前被抄家，留下的资料很少。但是关于胡雪岩的传奇故事，却在民间口耳相传，流传甚广。尽展红顶商人跌宕起伏的人生经历，倾听智慧长者洗尽铅华的心灵启示。",
      "title": "胡雪岩的启示"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_18-53-45.jpg",
      "clickCount": 0,
      "id": "3f55199a867044d885997b4cda0cd597",
      "likeCount": 0,
      "message":
          "郦波对戚继光的军事成就作了全新意义的阐释，重新赋予戚继光这位抗倭英雄应有的历史评价。一起重温那段悲壮历史中的民族感，并唤起人们强烈的爱国主义情怀。",
      "title": "抗倭英雄戚继光"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-23_19-48-41.jpg",
      "clickCount": 0,
      "id": "704e4a491b8f425c852fc1973246bef8",
      "likeCount": 0,
      "message":
          "在第二次世界大战结束暨世界反法西斯战争胜利六十周年的日子里，《百家讲坛》栏目隆重推出大型系列节目《二战人物》，用当代视角回望二战，用人文视角关注人物。",
      "title": "二战人物"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_12-09-34.jpg",
      "clickCount": 0,
      "id": "60bcdcb5742b40b29d3dbdbd1c5409a5",
      "likeCount": 0,
      "message":
          "《东汉开国》是中央电视台科学教育频道（CCTV10）《百家讲坛》栏目的一个系列节目，其从正史的角度描述了自新朝末年天下大乱、光武帝刘秀起兵到东汉永平初年期间数十年的历史。",
      "title": "东汉开国"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_13-22-50.jpg",
      "clickCount": 0,
      "id": "262ca5733e314d5f96dd22480b240d65",
      "likeCount": 0,
      "message":
          "中国最后封建王朝给后人留下了一连串的疑案，也给清王朝十二帝的人生蒙上传奇的色彩。近年来，这些传奇式的历史疑案引发了影视界和社会大众对清宫戏的热情。这些戏说历史影视作品的泛滥，让大众对历史史实的理解走进误区。为了澄清史实，还原历史本来面目，《百家讲坛》于近期推出大型系列节目“清十二帝疑案”，清史专家从正史的角度为您揭开清十二帝疑案的神秘面纱。",
      "title": "清十二帝疑案"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_14-16-33.jpg",
      "clickCount": 0,
      "id": "9835a8a64f1b40ea9c05bbbf85022002",
      "likeCount": 0,
      "message":
          "王守仁（1472-1529），汉族，浙江余姚人。字伯安，号阳明子，世称阳明先生，故又称王阳明。中国明代最著名的思想家、哲学家、文学家和军事家。陆王心学之集大成者，非但精通儒家、佛家、道家，而且能够统军征战，是中国历史上罕见的全能大儒。封“先儒”，奉祀孔庙东庑第58位",
      "title": "传奇王阳明"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-24_15-29-15.jpg",
      "clickCount": 0,
      "id": "6de80304c9ba45de83c6be601602d1ed",
      "likeCount": 0,
      "message":
          "明朝嘉靖皇帝给后世留下的印象并不深刻，然而明朝最著名的奸臣严嵩，最著名清官海瑞，最善战的将领戚继光，都生活在这个朝代。嘉靖皇帝这个从天上掉下来的皇位，就是打开嘉靖一朝往事的钥匙。",
      "title": "大明嘉靖往事"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-25_21-21-37.jpg",
      "clickCount": 0,
      "id": "accb707be23048f09885f5afedcb4475",
      "likeCount": 0,
      "message":
          "公元1449年，蒙古瓦剌大举进犯明朝边境，明英宗被俘，京师震动，大明王朝危在旦夕。此时有一个人挺身而出、力挽狂澜，他亲自督战，捍卫北京，最后打退了蒙古瓦剌的进攻，挽救了风雨飘摇的大明江山，使得大明王朝的历史进程又延续了一百多年。那么，这位力挽狂澜于既倒的大英雄，就是本系列节目的主人公――救时宰相于谦。",
      "title": "“救时宰相”于谦"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-25_21-35-20.jpg",
      "clickCount": 0,
      "id": "0592e87337664080903393ec4fa4a2d6",
      "likeCount": 0,
      "message":
          "对于今天的中国人来说，皇帝是古老而又神秘的词汇，秦皇汉武、唐宗宋祖是遥远的仰望，康熙、乾隆也只剩画像上的猜想。但有一个皇帝，我们不仅能看清他的面容，还能听到他的声音，他就是清朝最后一位皇帝――爱新觉罗·溥仪。溥仪出生于1906年，逝世于1967年，在一个花甲的轮回中，他拥有了非凡传奇的人生经历：登极、退位、傀儡；皇帝、战犯、公民，荣辱沉浮、几度起落，每一个他都很不寻常。在那个大动荡、大转折的时代，他和普通人一样，也曾焦虑、也曾彷徨，在尴尬中寻找前行的路，在期待中挽回失去的家。他是一个时代的缩影，他是历史的注脚。",
      "title": "末代皇帝溥仪"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-25_22-07-04.jpg",
      "clickCount": 0,
      "id": "04f34e533b83491cbe19c5eb00806778",
      "likeCount": 0,
      "message":
          "淮海战役在个方面落后的情况下战胜，成为战争史上的奇迹，中国共产党将最初的设想逐步升级，最后成为一场决定性的战役，成为三大战役中牺牲人说最多、歼灭敌人最多的战役，本期节目中，王树增讲解了当是战争中共产党是怎样从小淮海战役升级为大淮海战役，优势怎样在敌我力量悬殊下决战胜利。",
      "title": "王树增解读淮海战役"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-25_22-36-16.jpg",
      "clickCount": 0,
      "id": "dad0ba8d088647ba9af9ec232306e058",
      "likeCount": 0,
      "message":
          "唐高宗，唐朝历史上一个尴尬的皇帝。人们一提起他，首先想到的就是他的父亲唐太宗，以及他的夫人武则天，他本人的身影反倒模糊不清。他的很多行为，也让后人分不清究竟是懦弱还是精明。有人说他是懦弱无能，有人说他是精明智慧，那么，他的真实形象是什么呢？要回答这些问题，我们就要回顾唐高宗的一生。早年的唐高宗，在他还没有当皇帝，甚至还没有当太子的时候，他有什么样的经历？他又是一个什么样的人呢？",
      "title": "唐太宗真相"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-26_14-13-08.jpg",
      "clickCount": 0,
      "id": "abfb8127778342a7b437fbdfa7b97ea0",
      "likeCount": 0,
      "message":
          "《弟子规》是一本只有一千来字的小册子，儒家思想提倡的孝、悌、谨、信、泛爱众、亲仁和余力学文等思想，都在《弟子规》中，有明确的行为规范，那么这些行为规范，对于现代人会有什么作用呢？《弟子规》为什么会引起许多现代人的重视？《弟子规》的作者是谁？成书于哪个年代？其中都有哪些严格的规定？又是什么原因，使越来越多的人，开始学习《弟子规》呢？",
      "title": "钱文忠解读《弟子规》"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-26_23-13-46.jpg",
      "clickCount": 0,
      "id": "08773d4157294d21bdd8e5d441cc3bcf",
      "likeCount": 0,
      "message":
          "金庸的武侠小说写尽了人生百态，而小说里的主要人物，无一不是金庸自身各个阶段的思想反映，纵观金庸小说的武侠人物，它又是金庸成思想变化的历程展现。1955年，30岁的金庸以一部《书剑恩仇录》涉足武林，随后《雪山飞狐》《射雕英雄传》《飞狐外传》也冲出江湖。此时的金庸年轻有为，于是一批建功立业的大侠跃然纸上，陈家洛、袁承志、郭靖、胡斐，尽管他们身上有理想化的成分，但其侠义精神却能掩盖其短，张扬其长。",
      "title": "孔庆东看武侠小说"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_00-06-48.jpg",
      "clickCount": 0,
      "id": "0b7f3758a131416fba05109f55707557",
      "likeCount": 0,
      "message":
          "有人说金钱就是幸福，那么为什么我们现在的人均收入，已经提高了很多，但感到幸福的人，却并没有比以前增加呢？是什么，阻碍了我们去感知幸福？在通往幸福的道路上，隐藏着哪些我们没有觉察到的杀手呢？倾听一下毕淑敏老师的解析吧！",
      "title": "破解幸福密码"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_08-09-37.jpg",
      "clickCount": 0,
      "id": "cd858c3bd63c4480b9fd02cab6e13e1b",
      "likeCount": 0,
      "message":
          "包公本名包拯，字希仁，死后谥号为“孝肃”。他生前就享有盛名。根据《宋史》记载，当时的北宋都城汴梁，也就是现在的开封，就流传着这样的民谣：“关节不到有阎罗包老。”意思是说，打官司没有钱疏通关节，不用担心，还有阎王老爷和包公包老爷为你做主呢！可见，包公的口碑之好，影响之大！九百多年来，有关包公的传说实在太多",
      "title": "正说包公"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_08-27-41.jpg",
      "clickCount": 0,
      "id": "c6c135e797ed41129d03f61d10915858",
      "likeCount": 0,
      "message":
          "无论在战场，还是在商场，当自己的力量远不如对手时，如何才能牵制对手的优势，使自己变被动为主动？怎样才能抓住最有利的时机，从而一招制胜？",
      "title": "新解三十六计"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_08-47-47.jpg",
      "clickCount": 0,
      "id": "e594083cf257457b9bab7844ca441ed1",
      "likeCount": 0,
      "message":
          "有人说，人的所有器官最具攻击性与杀伤力的，不是尖牙利爪、不是拳脚而是舌头；世界上最让人提心吊胆的不是刀剑、不是枪弹也是舌头。被称为中国纵横家鼻祖的张仪，就是一位将口舌之功发挥得淋漓尽致、无以复加的说客。从公元前328年开始，张仪运用纵横之术游说于魏、楚、韩等国之间，利用各个诸侯国之间的矛盾，或为秦国拉拢使其归附于秦国，或拆散其连盟使其力量削弱。在整个秦惠王时期，他不仅使秦国在外交上连连取得胜利，而且帮助秦国开拓了疆土，为秦国的强大和以后统一中国立下了汗马功劳。秦惠王念张仪功劳卓著，封他为“武信君”并赐封给他五座城邑。就在张仪功成名就、春风得意的时候，一件大事的发生改变了他的人生轨迹，那么，张仪将如何去应对命运的变故？",
      "title": "战国说客双雄"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_13-15-46.jpg",
      "clickCount": 0,
      "id": "76d58223332c43fb922c0e712e9417e1",
      "likeCount": 0,
      "message":
          "太平公主(约670年—713年)，唐高宗李治之女，生母武则天。下嫁薛绍，再嫁武攸暨。生前曾受封“镇国太平公主”，后被唐玄宗李隆基赐死。太平公主是我国历史上赫赫有名的人物，她不仅仅因为是中国历史上第一个女皇武则天的女儿，而且几乎真的成了“武则天第二”。",
      "title": "太平公主"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_21-02-03.jpg",
      "clickCount": 0,
      "id": "ef1b58a76fe244138fcde5c14c3936de",
      "likeCount": 0,
      "message":
          "宋江是中国古典小说《水浒传》中的主要人物之一。梁山一百单八将之首，人称“孝义黑三郎”、“及时雨”、“呼保义”。原本是郓城县押司，后加入梁山，在托塔天王晁盖阵亡后成为梁山的首领，极力主张接受朝廷的招安，并在被招安后率领梁山兄弟们先后攻打辽国以及田虎、王庆和方腊率领的起义军，回朝后不久被奸臣高俅等人用毒酒害死。",
      "title": "鲍鹏山新说水浒之宋江"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_22-28-17.jpg",
      "clickCount": 0,
      "id": "3f40779ce19a40868245c2cad500d6ba",
      "likeCount": 0,
      "message":
          "吕不韦（?－公元前235年），姜姓，吕氏，名不韦。战国末年著名商人、政治家、思想家，后为秦国大臣，卫国濮阳（今河南濮阳滑县）人。吕不韦是阳翟（今河南省禹州市）的大商人，故里在城南大吕街，他往来各地，以低价买进，高价卖出，所以积累起千金的家产。他以“奇货可居”闻名于世，曾辅佐秦始皇登上王位，任秦朝相邦，并组织门客编写了著名的《吕氏春秋》，其门客有三千人。即《吕览》。也是杂家思想的代表人物。有关成语：一字千金。",
      "title": "吕不韦"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_22-34-59.jpg",
      "clickCount": 0,
      "id": "222cc6755eb74cca94a85101ff90c939",
      "likeCount": 0,
      "message":
          "庄子是诸子百家中一个重要的代表人物，人们把孔子称为“圣人”，称庄子为“神人”。如果说孔子是儒家的代表，那么庄子就是道家的化身。庄子留给我们的，是他那些充满了寓言和小故事的文章。庄子一生穷困潦倒，却能超越贫困乐在其中，庄子能言善辩，尤其善用寓言和小故事来表达自己的观点，同时嘲讽那些追名逐利的小人。庄子的文章充满了天马行空的想象，充满了尖酸刻薄的讽刺和挖苦。他的所做所为，经常令人瞠目结舌，又令人拍案叫绝。他看破功名，不屑利禄，甚至对于死亡，他也有着自己独到的见解。　　在本书中，于丹延续讲述《论语》的方法，以现代的视角来讲述庄子的思想。在《于丹〈庄子〉心得》中，她将主线放在庄子的“逍遥游”上。每一个人都希望自己的一生是幸福的，是有效率的，于丹认为，只有真正清醒地认知了自己，才可能获得成功的人生。而认识自己，却是一件非常难做到的事。“这部书里，真正流传下来的思想，应该是天地自在逍遥游，而这样一番逍遥游里，庄子他看破的东西太多太多。”",
      "title": "《庄子》心得"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_22-43-04.jpg",
      "clickCount": 0,
      "id": "31a3a3adefb44837b8068e442677bf6a",
      "likeCount": 0,
      "message":
          "于丹为观众讲述的就是这样的孔子，一位链接了多彩世界的灰色孔子。链接是广泛的，东西南北，古今中外。主题却是单纯的，单纯到没有色彩，没有性别，没有时间和空间，只有温度。以白话诠释经典，以经典诠释智慧，以智慧诠释人生，以人生诠释人性，以人性安顿人心，体悟经典的普适智慧。",
      "title": "《论语》心得"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_22-43-04.jpg",
      "clickCount": 0,
      "id": "cc3c520ba3054bb7890f4edffaa33048",
      "likeCount": 0,
      "message":
          "在中国儒家文化中，特别提倡孝道，孔子认为，孝，是做人的根本道德，所以中国的传统文化提倡：百善孝为先。但是从父父子子，君君臣臣的封建社会发展出来的孝道，在两千多年后的今天，是否还是那么重要？在日新月异的现代社会里，儿女和父母之间，由于生活环境的不同，认知事物的不同，不可避免地会产生代沟，发生矛盾和冲突是难免的，在这种情况下，我们应该怎么做才为孝？孔老夫子毕竟生活在两千多年以前，他有关孝道的准则，在我们现代社会中还能够适用吗？我们现代人又该如何理解孝道呢？",
      "title": "《论语》感悟"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-27_23-26-57.jpg",
      "clickCount": 0,
      "id": "74aa6d9045774236808d26e981edd21a",
      "likeCount": 0,
      "message":
          "智者，无疑是他当之无愧的冠冕：希望和失望、亢奋和凄冷、轩冕荣华和踽踽独处，在他生命的历程中交替更迭，如环无端，不知所终，促使他领悟宇宙人生的真相，探索生活的底蕴。无尽无休的苦难，没有使他厌倦人生，变得冷漠；权利与名望的诱人光彩，也没有使他自我迷失，忘乎所以。他心境恬淡，视若浮云，有足够的勇气和力量蔑视身外的一切。他的全部作品展现了一个可供人们感知、思索和效仿的真实人生，现世性与超越性水乳交融。他拥有一代又一代的众多读者，永远令人怀想，永远给人启迪。",
      "title": "苏轼"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_12-40-14.jpg",
      "clickCount": 0,
      "id": "f30e9aa65cdd4ace89337e5cb845ada4",
      "likeCount": 0,
      "message":
          "杜甫，中国古代诗歌史上最伟大的诗人之一。他被后世尊成为“诗圣”，他的诗被后世尊成为“诗史”。才华出众的他，会在科举考试中一炮打响吗？为什么他总是无法实现自己的远大政治抱负呢？医生苦难不断的杜甫最终是怎么离开人世的呢？而我们对他与李白的诗孰优孰劣的争论又应该如何对待？",
      "title": "诗圣杜甫"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_17-47-01.jpg",
      "clickCount": 0,
      "id": "9d9bf133457d43f68bc186d316c0e689",
      "likeCount": 0,
      "message":
          "陈嘉庚，一位爱国华侨，十七岁跟随父亲下南洋经商，他靠着自己的精明睿智成为名震南洋的实业家。陈嘉庚致富后不忘苦难中的祖国，他把资金全部倾注于教育事业。就在陈嘉庚兴办学校，以尽天职时，1937年抗日战争爆发，祖国的大片江山落入敌手，一时间国土沦丧，神州危在旦夕，身为南侨领袖的陈嘉庚义无反顾，又投入到抗日救亡运动中。他号召海外华侨捐资捐款，他组织三千多名南侨机工回国抗战。",
      "title": "我心中的的陈嘉庚"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_21-31-44.jpg",
      "clickCount": 0,
      "id": "393f528c72e041e083a4bc1eecbaffde",
      "likeCount": 0,
      "message":
          "吴越争霸，中国历史上最为紧张、精彩的片段之一。在数十年的风云岁月中，仇恨、阴谋中不乏有惊心动魄的美丽、哀婉无奈的牺牲，更有洞彻历史人生的大智慧。范蠡，就是这种智慧的集大成者。一切已经准备就绪，待等登上春秋的政治舞台，一场属于范蠡的挑战和冒险，便华丽地拉开了大幕 ... ...",
      "title": "范蠡"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_21-42-18.jpg",
      "clickCount": 0,
      "id": "36714b4ee26c4cca90f8d3a0330eb30e",
      "likeCount": 0,
      "message":
          "天下父母无不希望儿女生活幸福，可是《西厢记》里老夫人为何不让莺莺和自己的心上人张生谈恋爱呢，那么莺莺的丫鬟红娘又如何设计把老夫人引入陷阱，从而成就一段美好姻缘的呢？",
      "title": "爱情喜剧《西厢记》"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_22-50-56.jpg",
      "clickCount": 0,
      "id": "aedef5c9df5b488b8327d745e1c02b80",
      "likeCount": 0,
      "message":
          "《聊斋志异》谈狐说鬼，瑰丽迷人，这些神奇变幻的精灵们不知拨动过多少人的寂寞的心弦，触发过多少人的神外之思。《聊斋志异》，一个花鬼狐妖的世界，一篇篇亦庄亦谐的故事。蒲松龄笔下的美女为什么总会爱上书生？远离人间的牛鬼蛇神为什么比君子更可爱？",
      "title": "马瑞芳说聊斋"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-28_23-26-09.jpg",
      "clickCount": 0,
      "id": "6c5ab95f1dbc4fe196d42d6f22f3cb89",
      "likeCount": 0,
      "message":
          "海瑞，一个生前和死后都充满争议的人物，他是大明王朝的官场上独一无二的特例，他极端廉洁，严于律己也严于律人，但也被认为是极端乖僻，不合时宜。他几次为官，几次罢官，他在老百姓的眼里是清官，他在同僚的眼里是怪人。",
      "title": "清官海瑞"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_13-56-37.jpg",
      "clickCount": 0,
      "id": "d21ab0cae27045dbb3a2fe7955377fec",
      "likeCount": 0,
      "message":
          "老子是我国古代伟大的思想家，生活在春秋时期，楚国苦县人，他对后世的影响主要是一本叫《道德经》的著作，它开创了我国古代哲学思想的先河。但有关老子本人的记载留下的不多，这几给后人创造了一个巨大的想象空间，有人把他神化，有人认为他就是太上老君，有关老子的传说不胜枚举，种种的遐想赋予了老子太多的神秘色彩，那么老子到底是什么样的呢？老子作为道教的开山鼻祖，被尊称为太上老君，这位神话般的人物，具有和其他圣人不一样的名字，老子，它不同于常人的称谓也许只有在神话传说中才能解释的清。神话传说给予了老子很多神秘的味道.这是一种后人对前人和圣人的敬仰。那么，真是的老子是什么样的呢？《道德经》不过五千言，却涵盖了很多妙义，告诉我们许多法则。几千年前过去了，老子和他的《道德经》一直活跃在我们身边，有关老子的话题一直研究不完，解释不尽……课程目录老子是我国古代伟大的思想家，生活在春秋时期，楚国苦县人，他对后世的影响主要是一本叫《道德经》的著作，它开创了我国古代哲学思想的先河。但有关老子本人的记载留下的不多，这几给后人创造了一个巨大的想象空间，有人把他神化，有人认为他就是太上老君，有关老子的传说不胜枚举，种种的遐想赋予了老子太多的神秘色彩，那么老子到底是什么样的呢？老子作为道教的开山鼻祖，被尊称为太上老君，这位神话般的人物，具有和其他圣人不一样的名字，老子，它不同于常人的称谓也许只有在神话传说中才能解释的清。神话传说给予了老子很多神秘的味道，这是一种后人对前人和圣人的敬仰。那么，真是的老子是什么样的呢？《道德经》不过五千言，却涵盖了很多妙义，告诉我们许多法则。几千年前过去了，老子和他的《道德经》一直活跃在我们身边，有关老子的话题一直研究不完，解释不尽 ... ....",
      "title": "老子"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_14-09-59.jpg",
      "clickCount": 0,
      "id": "7ff85db7b92141b1b9b5fb2142ce3f96",
      "likeCount": 0,
      "message":
          "提起唐伯虎可谓妇孺皆知，他少年顽皮、青年风流、中年玩世不恭，好像唐伯虎是一个不知天下还有一个“愁”字的风流才子，他的一生真的就是这么风流吗？他风流的背后有着怎样的辛酸故事？",
      "title": "风流才子唐伯虎"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_14-50-58.jpg",
      "clickCount": 0,
      "id": "22cd04bc6c85466d8fe85356b5a9b046",
      "likeCount": 0,
      "message":
          "《红楼梦》是一部奇书，曹雪芹在这部伟大的奇书中不仅塑造了贾宝玉、林黛玉、薛宝钗、王熙凤等光彩照人、刻骨铭心的典型人物，也塑造了一大批各具特色、生动鲜活的配角形象。",
      "title": "红楼梦里的配角"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_17-25-50.jpg",
      "clickCount": 0,
      "id": "da49013b329847d1a0a5ad2bda4d859a",
      "likeCount": 0,
      "message":
          "二千七百年多年前，中国历史进入了春秋时代。虽然各个诸侯国在名义上仍然尊崇周朝天子为天下之王，但相互之间却经常因为土地、财富和人民而发生战争。在烽烟四起、弱肉强食的三百年的争斗中，名相管仲有五位诸侯国国君，先后依靠自身的实力和声望，召集诸侯会盟而成为诸侯盟主，他们就是历史上著名的“春秋五霸”。其中，开一代风气之先的第一位霸主是齐桓公，辅佐齐桓公成就霸业的正是名相管仲。",
      "title": "名相管仲"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_17-39-31.jpg",
      "clickCount": 0,
      "id": "d9bce6c430b642909761323c2abebc69",
      "likeCount": 0,
      "message":
          "中华民族是一个喜爱喝茶的民族，有句俗话说：“开门七件事，柴米油盐酱醋茶。”这话还有另外一个版本，叫做“文人七件宝，琴棋书画诗酒茶。”无论说是“七件事”，还是谈“七件宝”，都离不开“茶”字。许多老茶客认为：“宁可一日无食，不可一日无茶”。而可以用做茶具的器皿很多，但是紫砂壶却成为中国人最重要的喝茶工具，那么为什么中国人喝茶最终锁定了紫砂壶呢？在爱壶人的心目中，紫砂壶是个什么样子的器物呢？",
      "title": "紫砂壶传奇"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-29_23-00-13.jpg",
      "clickCount": 0,
      "id": "ff86aed4d56f4c788abc65606ddfb285",
      "likeCount": 0,
      "message":
          "孟子的思想，他的思想可以给我们一个完整的哲学体系，可以帮助我们建立一个正确的价值观。第一集讲述孟子这个人，先从孔孟之道讲起，从孔子本身的遗憾开始说起，而孟子却解开了孔子的遗憾。传世经典《论语》中，便可看出这点。百年之后，孔子思想完整化。《孟子》里完整的思想已成系统化，善、恶以及过去与未来都被一一列出。所有的价值观，都以真诚的力量表达了出来。",
      "title": "孟子的智慧"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_08-42-46.jpg",
      "clickCount": 0,
      "id": "d5a1a0f8ac7d4d68ac03c46bfbc790b4",
      "likeCount": 0,
      "message":
          "在中华民族的传统文化中，关羽不但是一位真实的历史人物，还是一个超越人间的帝王，更是一尊无处不在的神灵。历史上，关帝庙曾经遍布全国各地，几乎每个村庄都有关帝庙，其数量远远超过每个县才有一所的孔庙；而作为财神的关公，更是无处不在，几乎家家户户都虔诚供奉，让关老爷时时享受着果品香火。文学艺术作品中的关公形象，更是多姿多彩、各具神韵。然而，历史上的关羽，却是一名败军之将，因为自己的骄傲和大意，不但丢掉了荆州，也丢掉了自己的性命。败走麦城的悲剧英雄，最终却成为万众敬仰的圣人和神灵，这本身就是一桩千古之谜。溯本求源，探究历史真相，解码关公，体味民心所向。",
      "title": "解码关公"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_10-02-15.jpg",
      "clickCount": 0,
      "id": "8a2e036dc2454b92806b33131220ab6f",
      "likeCount": 0,
      "message":
          "杨家将是一部英雄传奇的故事，以小说、戏剧、评书等形式在中国民间广为流传。《百家讲坛》主讲人梅毅将为广大观众带来杨门忠烈精忠报国的动人故事。除了讲述史书上记载的有关杨家将外，更多从作家的角度看人性、看文化上的杨家将。用深入人心的英雄故事告诉我们什么是“忠”、“义”、“爱国为民”、“英雄精神”。",
      "title": "鲜为人知的杨家将"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_10-15-39.jpg",
      "clickCount": 0,
      "id": "e87af394cc3d4eb8b9d748c5cf47b9d6",
      "likeCount": 0,
      "message":
          "我要通过讲成语故事向朋友们介绍成语的一个特点，也是成语博大精深的一种表现。是什么呢？就是成语“字字皆有本”。所谓“字字皆有本”是什么意思呢？就是成语所用的每一个字都是有根据的，都是有它独特的用意的。由于它有这样一个特点，所以它不需要使用成语的人随便改动它。改动了它，可能徒劳无功，甚至于费力不讨好。成语是中华文化的瑰宝，在成语的背后，有人们生活经验的总结，也有历史典故的缩影。但是千百年流传下来，今天的人们发现，有些成语和最初产生的时候已经有了区别，比如“画虎不成反类犬”，它最早是叫“画虎不成反类狗”。一“狗”一“犬”，这究竟有什么区别？",
      "title": "成语趣谈"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_10-31-54.jpg",
      "clickCount": 0,
      "id": "a2e9d10671584ceeacc9805afb02473a",
      "likeCount": 0,
      "message":
          "中国幅员辽阔，民族众多，所以人们常说，百里不同风，千里不同俗。比如南方人习惯吃细粮，北方人喜欢吃粗粮，傣族人习惯住吊脚楼，福建沿海信奉妈祖等等。正所谓一方水土养一方人，不同的地域造成了不同的地域文化。那么什么样的文化才是真正的地域文化呢？了解地域文化，对我们现代人有什么启示呢？",
      "title": "地域文化的形成"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_10-39-23.jpg",
      "clickCount": 0,
      "id": "f1003fc2a15b4e46a69a8708308c2c57",
      "likeCount": 0,
      "message":
          "在一千多年前的魏晋时期，政治黑暗，战争不断，在战乱年代，出现了一个著名的文学群体，他们就是竹林七贤。他们几乎囊括了中国古代知识分子可以安身立命的所有选择，对我国的思想文化，甚至国人的心灵都产生了巨大影响。隐逸是他们主要的生活态度，同济大学刘强副教授做客百家讲坛，带大家走近魏晋易代之际，揭秘魏晋士人选择隐而不仕的心理状态。",
      "title": "竹林七贤"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_11-43-56.jpg",
      "clickCount": 0,
      "id": "d75b75beac364fe6a97b081f4db95b53",
      "likeCount": 0,
      "message":
          "欧阳修是宋代著名的政治家和改革家，同时也是最重要的文学家之一。他是苏轼、苏辙、曾巩的老师，也是王安石政坛上的伯乐。但因为一场突如其来的陷害，他被罢黜了官职，北京师范大学文学院教授康震为大家讲述欧阳修的仕途经历。",
      "title": "唐宋八大家之欧阳修"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_12-00-23.jpg",
      "clickCount": 0,
      "id": "a6f8710775b94f449b7cc2e19a6d4934",
      "likeCount": 0,
      "message":
          "柳宗元用了仅仅十一年时间，便由一名普通的读书郎成长为国务院重要部委的高级公务员，这与在仕途之路上坎坷不断的韩愈相比，简直是天壤之别。少年时代的他，才华出众，平步青云，然而就在事业蒸蒸日上的关键时刻，他却遭到一场异常猛烈的政治打击。",
      "title": "唐宋八大家之柳宗元"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_11-43-56.jpg",
      "clickCount": 0,
      "id": "87291f9ddbed475c8ab05c99a28f190a",
      "likeCount": 0,
      "message":
          "曾巩（1019年9月30日－1083年4月30日，天禧三年八月二十五日－元丰六年四月十一日），字子固，世称“南丰先生”。汉族，建昌南丰（今属江西）人，后居临川（今江西抚州市西）。曾致尧之孙，曾易占之子。嘉祐二年（1057）进士。北宋政治家、散文家，“唐宋八大家”之一，为“南丰七曾”（曾巩、曾肇、曾布、曾纡、曾纮、曾协、曾敦）之一。在学术思想和文学事业上贡献卓越。",
      "title": "唐宋八大家之曾巩"
    },
    {
      "capture":
          "https://cdn.cctv3.net/net.cctv3.BaijiaJiangtan/Snipaste_2023-06-30_12-21-39.jpg",
      "clickCount": 0,
      "id": "af8600c9fce44dcbb073114c4a5c8bbc",
      "likeCount": 0,
      "message":
          "韩愈到底为什么位居“唐宋八大家”之首呢？韩愈生于唐代中期的公元768年，字退之，河南孟州人，他是唐代古文运动的倡导者，与另一位著名的文学家柳宗元并称“韩柳”。那么，康震教授解读“唐宋八大家”，为什么一定要从韩愈开始讲起呢？",
      "title": "唐宋八大家之韩愈"
    }
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = width / 3;
    return Scaffold(
        backgroundColor: Color(0xfff5f7f9),
        resizeToAvoidBottomInset: true,
        body: Column(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  ItemsSeriesTagsWidget(
                      select: this.selectYear,
                      datas: SimpleKeyValue.seriesYears(),
                      onItemPress: onYearPress),
                  ItemsSeriesTagsWidget(
                      select: this.selectSort,
                      datas: SimpleKeyValue.seriesSorts(),
                      onItemPress: onSortPress)
                ],
              )),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    children: datas
                        .map((e) => Container(
                              padding: EdgeInsets.all(4),
                              margin: EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            e['capture'] as String,
                                            width: 75.w,
                                            height: 100.w,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 100.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e['title'] as String,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.sp),
                                                  ),
                                                  Text(
                                                    e['message'] as String,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.sp,
                                                        overflow: TextOverflow
                                                            .ellipsis),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    16.w)),
                                                        child: Image.network(
                                                          'https://cdn.cctv3.net/net.cctv3.typecho/i.jpg',
                                                          height: 32.w,
                                                          width: 32.w,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        '陈桥驿站',
                                                        style: TextStyle(
                                                            fontSize: 14.sp),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.play_arrow,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            size: 14,
                                                          ),
                                                          Text(
                                                            '${e['clickCount']}播放',
                                                            style: TextStyle(
                                                                fontSize: 14.sp,
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.support,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            size: 14,
                                                          ),
                                                          Text(
                                                            '${e['clickCount']}收藏',
                                                            style: TextStyle(
                                                                fontSize: 14.sp,
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ))
                                      ],
                                    )
                                  ]),
                            ))
                        .toList(),
                  )))
        ]));
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;
}
