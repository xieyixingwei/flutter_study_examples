import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_http.dart';
import './L02_dio.dart';
import './L03_HttpClient.dart';

class HttpPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "http 实现网络请求",
      "subtitle":"http 是 Dart 原生的。",
      "widget": HttpExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "DIO 实现网络请求",
      "subtitle":"DIO 属于第三方库。",
      "widget": DioExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "HttpClient 实现网络请求",
      "subtitle":"HttpClient 位于 io.dart 里，Flutter Web 不支持 HttpClient。",
      "widget": HttpClientExampleA(),
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "http 实现网络请求", configs:_configs);
  }
}
