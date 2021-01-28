import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_RaisedButton.dart';
import './L02_FlatButton.dart';
import './L03_OutlineButton.dart';
import './L04_IconButton.dart';
import './L05_ButtonBar.dart';
import './L06_FloatingActionButton.dart';

/// Flutter右以下几种按钮组件
/// RaisedButton 凸起的按钮，是Material Design风格的Button
/// FlatButton 扁平化的按钮
/// OutlineButton 线框按钮
/// IconButton 图标按钮
/// ButtonBar 按钮组
/// FloatingActionButton 浮动按钮

class ButtonPage extends ShowPage {
  final String title = "Button";

  final List<ShowPage> items = [
    RaisedButtonPage(),
    FlatButtonExampleA(),
    OutlineButtonExampleA(),
    IconButtonExampleA(),
    ButtonBarExampleA(),
    FloatingActionButtonExampleA(),
  ];
}
