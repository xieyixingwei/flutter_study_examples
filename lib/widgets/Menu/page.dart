import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'package:helloworld/widgets/Menu/L01_PopupMenuButton.dart';


class MenuPage extends ShowPage {
  final String title = "Menu 实例";
  final String subtitle = "菜单、右键弹出菜单";

  final List<ShowPage> items = [
    PopupMenuButtonExampleA(),
  ];
}
