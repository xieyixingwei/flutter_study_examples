import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert'; // json转换
import 'package:dio/dio.dart';


class DioExampleA extends StatefulWidget {
  DioExampleA({Key key}) : super(key: key);

  @override
  _DioExampleA createState() => _DioExampleA();
}

class _DioExampleA extends State<DioExampleA> {
  Dio _dio = Dio(BaseOptions(
              baseUrl: "http://192.168.2.10:5000/",
              connectTimeout: 5000,
              receiveTimeout: 5000));

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
    var apiUrl = "dictionary/words/";
    var res = await _dio.get(apiUrl);
    if(res.statusCode == 200) {
      print('----------- ok');
      print(res.data.toString());
    } else {
      print('----------- failed');
      print(res.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("DIO 实现网络请求"),
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
