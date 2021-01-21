import 'package:flutter/material.dart';


/// CircleAvatar组件专门用于显示头像
/// A circle that represents a user
class CircleAvatarExampleA extends StatelessWidget {
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
