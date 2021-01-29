import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


// clipper是个CustomClipper类型, CustomClipper是个抽象接口类

// 继承CustomClipper定义一个裁剪区域
class _MyClipper extends CustomClipper<Rect>{

  // 重写getClip()方法可以定义一个裁剪区域
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTRB(10.0, 10.0, size.width - 10.0,  size.height- 10.0);
  }

  // 重写shouldReclip()方法来告诉ClipRect当一个新的clipper被设置了是否需要更新裁剪区域
  // 返回true来通知ClipRect更新裁剪区域
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class ClipRectExampleA extends ShowPage {
  final String title = "ClipRect";
  final String subtitle = "矩形裁剪";

  @override
  Widget build(BuildContext context) {

    _image() =>
      Container(
        child: Image.asset(
          "images/b.jpg",
          height: 100,
          width: 100,
          fit: BoxFit.cover
        ),
      );

    return Column(
            children: [
              SizedBox(height: 30,),
              _image(), // 原生图片
              SizedBox(height: 30,),
              ClipRect( // ClipRect 默认是没有任何裁剪效果的，需要通过clipper参数告诉ClipRect如何去裁剪
                clipper: _MyClipper(),        // 传入裁剪区域
                clipBehavior: Clip.hardEdge,  // 裁剪方式: Clip.hardEdge: 快速裁剪，牺牲质量，不支持抗锯齿
                                              //          Clip.antiAlias: 较慢的裁剪，支持抗锯齿，裁剪出来的边框相对圆滑
                                              //          Clip.antiAliasWithSaveLayer: 裁剪效率最低最慢，通常比较少用到
                child: _image(),
              )
            ],
          );
  }
}


class ClipPage extends ShowPage {
  final String title = "Clip";
  final String subtitle = "裁剪";

  final List<ShowPage> items = [
    ClipRectExampleA(),
  ];
}
