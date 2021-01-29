import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class AlignExampleA extends ShowPage {
  final String title = "Align 基本使用";

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 120,
          width: 120,
          color: Colors.grey,
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.5,
            child: Icon(
              Icons.star,
              color: Colors.redAccent,
            ),
          )
    );
  }
}

class AlignExamples extends ShowPage {
  final String title = "Align";
  final String subtitle = "调整相对于父组件的对齐";

  final List<ShowPage> items = [
    AlignExampleA(),
  ];
}


