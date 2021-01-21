import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class FluttertoastExampleA extends StatelessWidget {

  void _flutterToast(BuildContext context) {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Fluttertoast"),
        onPressed: () {
          _flutterToast(context);
        },
      ),);
  }

}
