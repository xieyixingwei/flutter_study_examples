import 'package:helloworld/components/ShowPage.dart';
import './L01_TabController.dart';
import './L02_DefaultTabController.dart';


class TabBarPage extends ShowPage {
  final String title = "Tabbar";

  final List<ShowPage> items = [
    TabBarExampleA(),
    DefaultTabControllerExampleA(),
  ];
}
