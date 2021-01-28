import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_ListView.dart';


class ListViewPage extends ShowPage {
  final String title = "ListView";

  final List<ShowPage> items = [
    ListViewExampleA(),
    ListViewExampleB(),
    ListViewExampleC(),
    ListViewExampleD(),
  ];
}
