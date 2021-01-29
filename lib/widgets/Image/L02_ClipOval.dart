import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


/// ClipOval实现圆角图片
class ClipOvalExampleA extends ShowPage {
  final String title = "ClipOval";
  final String subtitle = "显示圆角图片";

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.asset(
            "images/4.0x/a.jpg",
            height: 100,
            width: 100,
            fit: BoxFit.cover
        ),
    );
  }
}

/// 圆角图片实现方式2
class ImageRadiusExample extends ShowPage {
  final String title = "Container 显示圆角图片";

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                // image: NetworkImage(
                // "https://img.alicdn.com/imgextra/i4/1981879995/O1CN01JQWH4F2NhlF0uT3Ty_!!1981879995.png",
                // ),
                image: AssetImage("images/2.0x/a.jpg"),
                fit: BoxFit.cover
              ),
            ),
    );
  }
}
