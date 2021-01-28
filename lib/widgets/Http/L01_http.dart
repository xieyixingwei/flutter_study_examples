import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'dart:convert'; // json转换
import 'package:http/http.dart' as http;


class HttpExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "http 实现网络请求";
  final String subtitle = "http 是 Dart 原生的";

  HttpExampleA({Key key}) : super(key: key);

  @override
  _HttpExampleA createState() => _HttpExampleA();
}

class _HttpExampleA extends State<HttpExampleA> {

  @override
  void initState() {
    super.initState();

    // JSON和Map之间的转换 import 'dart:convert';
    Map info = {
      "name": "张三",
      "age": 18
    };
    // Map 转为JSON字符串 String
    print(json.encode(info));

    String student = '{"name": "Tom", "class": "3-1", "age": 12}';
    // JSON字符串 String转为Map
    Map s = json.decode(student);
    print(s);
    print(s["class"]);
  }

  _getData() async {
    var apiUrl = "http://192.168.2.10:5000/dictionary/words/";
    var res = await http.get(apiUrl);
    if(res.statusCode == 200) {
      print('----------- ok');
      print(res.body);
    } else {
      print('----------- failed');
      print(res.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              SizedBox(height: 10,),
              RaisedButton(
                child: Text("get"),
                onPressed: () {
                  _getData();
                },
                color: Theme.of(context).accentColor,
              ),
            ],
          );
  }
}
