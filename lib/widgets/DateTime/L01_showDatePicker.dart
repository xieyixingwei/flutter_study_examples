import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

class ShowDatePickerExampleA extends StatefulWidget with ShowPage{
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "showDatePicker showTimePicker";

  ShowDatePickerExampleA({Key key}) : super(key: key);

  @override
  _ShowDatePickerExampleA createState() => _ShowDatePickerExampleA();
}

class _ShowDatePickerExampleA extends State<ShowDatePickerExampleA> {
  var _nowDate = DateTime.now();
  var _nowTime = TimeOfDay.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 获取时间戳
    var timeStamp = this._nowDate.millisecondsSinceEpoch;
    print(timeStamp);

    // 时间戳转为 DateTime对象
    this._nowDate = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    print(this._nowDate);

    // 在 https://pub.dev 搜索第三方库
    // 在pubspec.yaml 中引入第三方库后，flutter会自动安装
    // dependencies:
    //   date_format: ^1.0.9

    // 使用第三方库date_format格式化日期时间
    var date = formatDate(this._nowDate, [yyyy, "年", mm, "月", dd]);
    print(date);
  }

  void _showDatePicker() async {
    var res = await showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2021),
    );
    setState(() {
      this._nowDate = res == null ? this._nowDate : res;
    });
  }

  void _showTimePicker() async {
    var res = await showTimePicker(
      context: context,
      initialTime: this._nowTime,
    );
    setState(() {
      this._nowTime = res == null ? this._nowTime : res;
    });
  }

  String get _formateDate {
    return formatDate(this._nowDate, [yyyy, "-", mm, "-", dd]);
  }

  String get _formateTime {
    return this._nowTime.format(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text("Flutter自带日期时间组件"),
                SizedBox(width: 20),
                InkWell(
                  child: Row(
                    children: [
                      Text(this._formateDate),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: () {
                    this._showDatePicker();
                  },
                ),
                SizedBox(width: 20),
                InkWell(
                  child: Row(
                    children: [
                      Text(this._formateTime),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: () {
                    this._showTimePicker();
                  },
                )
             ],
           )
         ],
       );
  }
}
