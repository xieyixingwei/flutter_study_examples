import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';
import 'package:helloworld/components/MyRaisedButton.dart';

/// 布局子组件Padding、Expanding、Row、Column、SizedBox、Wrap的使用

/// Padding 的使用
class MyLayoutComponentA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.7,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
      ],
    );
  }
}

/// Row 的使用
/// Row的子元素的宽度不会自动拉伸
class MyLayoutComponentB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.home),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.pages),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.tab),
        ),
      ],
    );
  }
}


/// Colum组件和ListView的区别是ListView的宽度会铺满整个显示区域的宽度
/// 而Colum组件的宽度是子元素的宽度
class MyLayoutComponentC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.home),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.pages),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: MyIcon(Icons.tab),
        ),
      ],
    );
  }
}

/// Expanded
class MyLayoutComponentD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2, // 占2份
          child: MyIcon(Icons.home, color: Colors.yellow,),
        ),
        Expanded(
          flex: 1, // 占1份
          child: MyIcon(Icons.search, color: Colors.blue),
        ),
        MyIcon(Icons.pages, color: Colors.green), // 本来宽度
      ],
    );
  }
}

/// 综合使用 Row Column Expanded SizedBox
class MyLayoutComponentE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: 200,
                color: Colors.black,
                alignment: Alignment.center,
                child: Text("综合使用 Row Column Expanded",
                style: TextStyle(
                  color: Colors.yellow
                ),),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2, // 占2份
                child: Container(
                  height: 180,
                  color: Colors.lightBlue,
                  child: Image.asset("images/2.0x/a.jpg", fit: BoxFit.cover),
                )
              ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1, // 占1份
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: MyIcon(Icons.home, color: Colors.green,),//Image.asset("images/a.jpg", fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: MyIcon(Icons.search, color: Colors.blue,),
                    )
                    
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

/// Wrap 布局组件用于流布局（会自动换行）
class MyLayoutComponentF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      //direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: <Widget>[
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
        MyRaisedButton("测试"),
      ],
    );
  }
}
