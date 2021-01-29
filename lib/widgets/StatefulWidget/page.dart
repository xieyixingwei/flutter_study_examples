import 'package:helloworld/components/ShowPage.dart';
import './L01_StatefulWidget.dart';


class StatefulWidgetPage extends ShowPage {
  final String title = "StatefulWidget";
  final String subtitle = "有状态组件";

  final List<ShowPage> items = [
    StatefulWidgetExampleA(),
    StatefulWidgetExampleB(),
  ];
}
