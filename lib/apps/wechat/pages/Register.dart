import 'package:flutter/material.dart';
import '../WechatApp.dart';


class RegisterPage extends StatefulWidget {
  final arguments;

  RegisterPage({this.arguments, Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState(arguments: this.arguments);
}

class _RegisterPageState extends State<RegisterPage> {
  final arguments;

  _RegisterPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Register Page"),
       ),
       body: Column(
         children: [
           Text("传入的参数: ${this.arguments}"),
           RaisedButton(
             child: Text("完成"),
             onPressed: () {
               // 返回到根路由
               Navigator.of(context).pushAndRemoveUntil(
                 MaterialPageRoute(
                   builder: (context) => WechatApp(index:1),),
                   (route) => route == null);
             },
           )
         ],
       ),
    );
  }
}
