import 'package:helloworld/components/ShowPage.dart';
import 'package:helloworld/widgets/Button/page.dart';
import 'package:helloworld/widgets/Card/page.dart';
import 'package:helloworld/widgets/DateTime/page.dart';
import 'package:helloworld/widgets/Dialog/page.dart';
import 'package:helloworld/widgets/Image/page.dart';
import 'package:helloworld/widgets/Menu/page.dart';
import 'package:helloworld/widgets/StatefulWidget/page.dart';
import 'package:helloworld/widgets/TabBar/page.dart';
import 'package:helloworld/widgets/Text/page.dart';


class BaseWidgetPage extends ShowPage {
  final String title = "基础组件实例";
  final String subtitle = "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。";
  final List<ShowPage> items = [
    TextPage(),
    ImagePage(),
    CardPage(),
    StatefulWidgetPage(),
    ButtonPage(),
    DialogPage(),
    TabBarPage(),
    MenuPage(),
    DateTimePage(),
  ];
}
