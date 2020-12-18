import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
           RaisedButton(
            child: Text("立即登录"),
            onPressed: () {
              // 返回上一页面
              Navigator.of(context).pop();
            },
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("注册"),
            onPressed: () {
              Navigator.pushNamed(context, "/register", arguments: {
                "number": 123456789
              });

              // 替换路由，将当前页面用"/register"页面替代
              //Navigator.of(context).pushReplacementNamed("/register");
            },
            color: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }
}
