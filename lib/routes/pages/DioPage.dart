import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert'; // json转换
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {

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
    var apiUrl = "https://baidu.com";
    var res = await http.get(apiUrl);
    if(res.statusCode == 200) {
      print(res.body);
    } else {
      print(res.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("AIO 实现网络请求"),
       ),
       body: Column(
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
      ),
    );
  }
}
