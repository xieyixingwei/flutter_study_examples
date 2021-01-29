import 'package:flutter/material.dart';
import 'dart:async';

import 'package:helloworld/components/ShowPage.dart';


class CustomDialogExampleA extends ShowPage {
  final String title = "自定义Dialog";
  void _showMyCustomDialog(BuildContext context) async {
    var res = await showDialog(
      context: context,
      builder: (context) {
        return LoadingDialog(
          content: "my loading dialog",
          close: (){
            // 关闭dialog 并传值出去
            Navigator.pop(context, "关闭");
          },
        );
      },
    );

    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("自定义 Dialog"),
        onPressed: () {
          _showMyCustomDialog(context);
        },
      ),);
  }
}


class LoadingDialog extends Dialog {
  final String title;
  final String content;
  final Function close;

  LoadingDialog({this.title = "自定义dialog", this.content = "", this.close = null});

  _showTimer(context) {
    Timer.periodic(
      Duration(milliseconds: 3000), (Timer t){
        Navigator.pop(context);
        t.cancel();
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    this._showTimer(context);

    return Material(
      type: MaterialType.transparency,
      child: Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text("${this.title}"),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                child: Icon(Icons.close),
                                onTap: () {
                                  this.close();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity, // 自动延申
                      child: Text("${this.content}", textAlign: TextAlign.left,),
                    ),
                  ],
                ),
              ),
              ),
    );
  }
}
