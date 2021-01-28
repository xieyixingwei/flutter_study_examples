import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_showDatePicker.dart';


class DateTimePage extends ShowPage {
  final String title = "日期时间";
  final List<ShowPage> items = [
    ShowDatePickerExampleA(),
  ];
}
