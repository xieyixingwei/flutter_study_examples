import 'package:helloworld/components/ShowPage.dart';
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
