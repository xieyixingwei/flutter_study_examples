import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_AppBar.dart';


class MeterialPage extends ShowPage {
  @override
  final String title = "Material";
  @override
  final String subtitle = "实现了Material Design 指南的视觉、效果、motion-rich的widget";

  @override
  final List<ShowPage> items = [
    AppBarExampleA(),
  ];
}
