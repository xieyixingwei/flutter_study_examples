import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ShowResult extends StatefulWidget {
  final http.Response _res;

  ShowResult(this._res, {Key key}) : super(key: key);

  @override
  _ShowResultState createState() => _ShowResultState();
}

class _ShowResultState extends State<ShowResult> {
  

  String _result() { 
    String result = "";
    Utf8Decoder decode = new Utf8Decoder();
    
    if(widget._res != null) {
      var str = decode.convert(widget._res.bodyBytes);
      try {
        json.decode(str);
        result = _convert(json.decode(str), 0);
      } on FormatException catch (e) {
        result = str;
      }
    }

    return result;
  }

  ///获取缩进空白符
  String _getDeepSpace(int deep) {
    var tab = StringBuffer();
    for (int i = 0; i < deep; i++) {
      tab.write("  ");
    }
    return tab.toString();
  }

/// [object]  解析的对象
/// [deep]  递归的深度，用来获取缩进的空白长度
/// [isObject] 用来区分当前map或list是不是来自某个字段，则不用显示缩进。单纯的map或list需要添加缩进
  String _convert(dynamic object, int deep, {bool isObject = false}) {
    var buffer = StringBuffer();
    var nextDeep = deep + 1;
    if(object is Map) {
      var list = object.keys.toList();
      if (!isObject) {//如果map来自某个字段，则不需要显示缩进
        buffer.write("${_getDeepSpace(deep)}");
      }
      buffer.write("{");
      if(list.isEmpty) {//当map为空，直接返回‘}’
        buffer.write("}");
      } else {
        buffer.write("\n");
        for (int i = 0; i < list.length; i++) {
          buffer.write("${_getDeepSpace(nextDeep)}\"${list[i]}\":");
          buffer.write(_convert(object[list[i]], nextDeep, isObject: true));
          if (i < list.length - 1) {
            buffer.write(",");
            buffer.write("\n");
          }
        }
        buffer.write("\n");
        buffer.write("${_getDeepSpace(deep)}}");
      }
    } else if (object is List) {
      if (!isObject) {//如果list来自某个字段，则不需要显示缩进
        buffer.write("${_getDeepSpace(deep)}");
      }
      buffer.write("[");
      if (object.isEmpty) {//当list为空，直接返回‘]’
        buffer.write("]");
      }else {
        buffer.write("\n");
        for (int i = 0; i < object.length; i++) {
          buffer.write(_convert(object[i], nextDeep));
          if (i < object.length - 1) {
            buffer.write(",");
            buffer.write("\n");
          }
        }
        buffer.write("\n");
        buffer.write("${_getDeepSpace(deep)}]");
      }
    } else if (object is String) {//为字符串时，需要添加双引号并返回当前内容
      buffer.write("\"$object\"");
    } else if (object is num || object is bool) {//为数字或者布尔值时，返回当前内容
      buffer.write(object);
    }  else {//如果对象为空，则返回null字符串
      buffer.write("null");
    }
    return buffer.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Status Code: " + widget._res?.statusCode.toString() ?? "", maxLines: 1,),
        SelectableText(
          _result(),
          maxLines: 500,),
      ]
    );
  }
}
