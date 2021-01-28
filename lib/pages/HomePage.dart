import 'package:helloworld/apps/dictionary/DictionaryApp.dart';
import 'package:helloworld/apps/wechat/WechatApp.dart';
import 'package:helloworld/common/page.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'package:helloworld/pages/R01_BaseWidget.dart';
import 'package:helloworld/provider/page.dart';
import 'package:helloworld/widgets/Http/page.dart';
import 'package:helloworld/widgets/Input/page.dart';
import 'package:helloworld/widgets/Layout/page.dart';
import 'package:helloworld/widgets/Meterial/page.dart';
import 'package:helloworld/widgets/Mouse/page.dart';


class HomePage extends ShowPage {
  final String title = "Fluter 实例教程";
  final List<ShowPage> items = [
    BaseWidgetPage(),
    MeterialPage(),
    LayoutPage(),
    /*
    {
      "title":"路由",
      "subtitle":"响应触摸事件并将用户路由到不同的页面视图（View）。",
      "route":"/RoutePage",
    },*/
    InputPage(),
    HttpPage(),
    ProviderPage(),
    CommonExamplePage(),
    MousePage(),
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
