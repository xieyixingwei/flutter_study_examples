import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert'; // json转换
import 'dart:io';

import 'package:helloworld/components/ShowWidgetComponent.dart';


class HttpClientExampleA extends StatefulWidget with ShowPage {
    final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "HttpClient 实现网络请求";
  final String subtitle = "HttpClient 位于 io.dart 里，Flutter Web 不支持 HttpClient";

  HttpClientExampleA({Key key}) : super(key: key);

  @override
  _HttpClientExampleA createState() => _HttpClientExampleA();
}

class _HttpClientExampleA extends State<HttpClientExampleA> {
  HttpClient _client = HttpClient();

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
    var url = "http://192.168.2.10:5000/dictionary/words/";
    _client.getUrl(Uri.parse(url))
      .then((HttpClientRequest request) => request.close())
      .then((HttpClientResponse response){
      if(response.statusCode == 200) {
        print('----------- ok');
        response.transform(utf8.decoder).join().then((String string) {
          print(string);
        });
      } else {
        print('----------- failed');
        print(response.statusCode);
      }
    });
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
