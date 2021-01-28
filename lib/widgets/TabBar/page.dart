import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_TabController.dart';
import './L02_DefaultTabController.dart';


class TabBarPage extends ShowPage {
  final String title = "Tabbar";

  final List<ShowPage> items = [
    TabBarExampleA(),
    DefaultTabControllerExampleA(),
  ];
}
