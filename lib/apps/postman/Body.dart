import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:helloworld/apps/postman/Param.dart';
import 'package:helloworld/apps/postman/ShowResult.dart';
import 'package:http/http.dart' as http;


class Body extends StatefulWidget {
  final Function(String method, String api) _record;

  Body(this._record, {Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  http.Response _res;

  _callback(http.Response res) {
    widget._record(res.request.method, res.request.url.toString());
    setState(() {
      this._res = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 120,
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children:[
              Param(_callback),
              ShowResult(_res),
            ],
          ),
        ),
      ),
    );
  }
}
