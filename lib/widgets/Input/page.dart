import 'package:helloworld/components/ShowPage.dart';
import './L01_TextField.dart';
import './L02_Checkbox.dart';
import './L03_Radio.dart';
import './L04_Switch.dart';


class InputPage extends ShowPage {
  final String title = "输入组件";

  final List<ShowPage> items = [
    TextFieldExamples(),
    CheckBoxExampleA(),
    RadioExampleA(),
    SwitchExampleA(),
  ];
}

