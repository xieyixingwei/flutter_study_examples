import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class RaisedButtonExampleA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            child: Text("RaisedButton"),
            color: Colors.red,
            textColor: Colors.white,
            elevation: 10, //阴影
            splashColor: Colors.white, //按下的颜色
            shape: RoundedRectangleBorder( // 设置按钮的圆角
              borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
            },
          );
  }
}


class RaisedButtonExampleB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80,
            child: RaisedButton(
              child: Text("圆形按钮"),
              shape: CircleBorder( // 设置按钮的圆角
                side: BorderSide(
                  color: Colors.white,
                )
              ),
              onPressed: () {
              },
            )
    );
  }
}


class RaisedButtonExampleC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
            icon: Icon(Icons.search),
            label: Text("带按钮的图标"),
            onPressed: () {
            },
          );
  }
}


class RaisedButtonExampleD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80,
            width: 300,
            child: RaisedButton(
              child: Text("通过Container可以设置Button的大小"),
              onPressed: null, // 禁用按钮
            ),
          );
  }
}


class RaisedButtonExampleE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: Container(
                  height: 80, // 可以设置高度
                  width: 300, // 设置宽度没用
                  child: RaisedButton(
                    child: Text("自适应Button"),
                    onPressed: () {
                    },
                  ),
                ),
              ),
            ],
          );
  }
}


class RaisedButtonPage extends ShowPage {
  final String title = "RaisedButton";
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 10,),
          RaisedButtonExampleA(),
          SizedBox(height: 10,),
          RaisedButtonExampleB(),
          SizedBox(height: 10,),
          RaisedButtonExampleC(),
          SizedBox(height: 10,),
          RaisedButtonExampleD(),
          SizedBox(height: 10,),
          RaisedButtonExampleE(),
        ],
      );
  }
}
