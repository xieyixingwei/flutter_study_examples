import 'package:helloworld/components/ShowPage.dart';
import './L01_Text.dart';


class TextPage extends ShowPage {
  final String image = "lib/widgets/Text/images/Text.PNG";
  final String title = "Text组件";
  final String subtitle = "文本显示和样式";

  final List<ShowPage> items = [
     TextExampleA(),
  ];
}
