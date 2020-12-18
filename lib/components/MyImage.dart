import 'package:flutter/material.dart';

/// 显示网络图片
class MyImageNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 300,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            child: Image.network(
              "https://img.alicdn.com/imgextra/i4/1981879995/O1CN01JQWH4F2NhlF0uT3Ty_!!1981879995.png",
              alignment: Alignment.topRight,
              color: Colors.blue,
              colorBlendMode: BlendMode.screen,
              //fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
    );
  }
}

/// 显示本地图片
/// 1. 新建images/2.0x、images/3.0x、images/4.0x文件夹
/// 2. 将图片放入上面建好的文件夹中
/// 3. 在pubspec.yaml配置文件中引入本地图片
///    assets:
///      - images/a.jpeg
///      - images/2.0x/a.jpg
///      - images/3.0x/a.jpg
///      - images/4.0x/a.jpg
/// 4. 更新pubspec.yaml配置文件后，需要重新打开工程编译，不然会提示找不到图片
/// 
class MyImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 300,
            height: 500,
            child: Image.asset(
                "images/2.0x/a.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.cover
            ),
    );
  }
}

/// 圆角图片实现方式1 
class MyImageRadiusA extends StatelessWidget {
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
class MyImageRadiusB extends StatelessWidget {
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
