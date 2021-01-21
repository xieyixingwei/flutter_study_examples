import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';


/// 综合使用 Row Column Expanded SizedBox
class LayoutExampleA extends StatelessWidget {
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

