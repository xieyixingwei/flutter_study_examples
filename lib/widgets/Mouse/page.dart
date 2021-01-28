import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'package:helloworld/widgets/Mouse/L01_MouseRegion.dart';


class MousePage extends ShowPage {
  final String title = "Mouse 组件";
  final String subtitle = "管理鼠标事件";
  final List<ShowPage> items = [
    MouseRegionExampleA(),
  ];
}
