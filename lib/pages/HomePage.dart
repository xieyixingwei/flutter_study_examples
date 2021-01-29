import 'package:helloworld/apps/dictionary/DictionaryApp.dart';
import 'package:helloworld/apps/wechat/WechatApp.dart';
import 'package:helloworld/common/page.dart';
import 'package:helloworld/components/ShowPage.dart';
import 'package:helloworld/pages/R01_BaseWidget.dart';
import 'package:helloworld/provider/page.dart';
import 'package:helloworld/widgets/Clip/page.dart';
import 'package:helloworld/widgets/Http/page.dart';
import 'package:helloworld/widgets/Input/page.dart';
import 'package:helloworld/widgets/Layout/page.dart';
import 'package:helloworld/widgets/Meterial/page.dart';
import 'package:helloworld/widgets/Mouse/page.dart';
import 'package:helloworld/widgets/Navigator/page.dart';


class HomePage extends ShowPage {
  final String title = "Fluter 实例教程";
  final List<ShowPage> items = [
    BaseWidgetPage(),
    MeterialPage(),
    LayoutPage(),
    NavigatorPage(),
    InputPage(),
    HttpPage(),
    ProviderPage(),
    CommonExamplePage(),
    MousePage(),
    ClipPage(),
    WechatApp(),
    DictionaryApp(),
    /*
    {
      "title":"动画和Motion",
      "subtitle":"在您的应用中使用动画。查看Flutter中的动画总览",
      "route":"/InputPage",
    },*/
  ];
}
