import 'package:helloworld/components/ShowPage.dart';
import 'package:helloworld/widgets/Layout/L10_Align.dart';
import 'package:helloworld/widgets/ListView/page.dart';
import './L00_Container.dart';
import './L01_Padding.dart';
import './L02_Column.dart';
import './L03_Row.dart';
import './L04_Expanded.dart';
import './L05_Wrap.dart';
import './L06_Examples.dart';
import './L07_GridView.dart';
import './L08_AspectRatio.dart';
import './L09_Stack.dart';


/// 布局子组件Padding、Expanding、Row、Column、SizedBox、Wrap, Grid的使用
class LayoutPage extends ShowPage {
  final String title = "Layout";
  final String subtitle = "排列其它widget的columns、rows、grids和其它的layouts";
  final List<ShowPage> items = [
    ContainerExampleA(),
    PaddingExampleA(),
    RowExamples(),
    ColumnExamples(),
    ExpandedExampleA(),
    AlignExamples(),
    ListViewPage(),
    WrapExampleA(),
    LayoutExampleA(),
    GridViewExamples(),
    AspectRatioExampleA(),
    StackExamples(),
  ];
}
