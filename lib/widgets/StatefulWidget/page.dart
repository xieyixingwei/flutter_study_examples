import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_StatefulWidget.dart';


class StatefulWidgetPage extends ShowPage {
  final String title = "StatefulWidget";
  final String subtitle = "有状态组件";

  final List<ShowPage> items = [
    StatefulWidgetExampleA(),
    StatefulWidgetExampleB(),
  ];
}
