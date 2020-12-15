import 'package:flutter/material.dart';

/// 卡片组件 Card的使用
class MyCardA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          shadowColor: Colors.blue,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话: 12345678"),
              ),
              ListTile(
                title: Text("地址: xxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          shadowColor: Colors.blue,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28),),
                subtitle: Text("初级工程师"),
              ),
              ListTile(
                title: Text("电话: 5643278"),
              ),
              ListTile(
                title: Text("地址: xxxxxx"),
              ),
            ],
          ),
        )
      ],
    );
  }
}


/// CircleAvatar组件专门用于显示头像
/// A circle that represents a user
class MyCardB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset("images/c.jpg", fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/b.jpg"),
                ),
                title: Text("XXXXXX"),
                subtitle: Text("xxxxxxxxxxxxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset("images/c.jpg", fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/b.jpg"),
                ),
                title: Text("XXXXXX"),
                subtitle: Text("xxxxxxxxxxxxxxxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
