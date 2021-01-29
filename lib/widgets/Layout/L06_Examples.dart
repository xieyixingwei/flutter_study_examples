import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class LayoutExampleA extends ShowPage {
  final String title = "综合使用 Row Column Expanded SizedBox";

  _container(Widget child, Color color) =>
  Container(
    child: child,
    decoration: BoxDecoration(
      color: color,
    ),
  );

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
                      child: _container(Text("详情"), Colors.pink),//Image.asset("images/a.jpg", fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: _container(Text("搜索"), Colors.teal),
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

