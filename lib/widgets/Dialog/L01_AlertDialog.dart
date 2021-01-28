import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class AlertDialogExampleA extends ShowPage {
  final String title = "AlertDialog";
  void _alertDialog(BuildContext context) async {
    var res = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("AlertDialog"),
          content: Text("Are you sure?"),
          actions: [
            RaisedButton(
              child: Text("cancel"),
              onPressed: () {
                // 关闭dialog 并传值出去
                Navigator.pop(context, "0");
              },
            ),
            RaisedButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.pop(context, "1");
              },
            )
          ],
        );
      },
    );

    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("AlertDialog"),
        onPressed: () {
          _alertDialog(context);
        },
      ),);
  }
}
