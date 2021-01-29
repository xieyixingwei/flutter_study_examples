import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class IconButtonExampleA extends ShowPage {
  final String title = "IconButton";
  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(Icons.sanitizer,),
            onPressed: () {
              
            },
          );
  }
}
