import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
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
                Navigator.pop(context, "1");
              },
            ),
            RaisedButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.pop(context, "2");
              },
            )
          ],
        );
      },
    );

    print(res);
  }

  void _simpleDialog() async {
    var res = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("SimpleDialog"),
          children: [
            SimpleDialogOption(
              child: Text("option A"),
              onPressed: () {
                print("A");
                // 关闭dialog 并传值出去
                Navigator.pop(context, "A");
              }
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option B"),
              onPressed: () {
                print("B");
                Navigator.pop(context, "B");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option C"),
              onPressed: () {
                print("C");
                Navigator.pop(context, "C");
              },
            ),
          ],
        );
      },
    );

    print(res);
  }
  
  void _showModalBottomSheet() async {
    var res = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height : 200,
          child: Column(
            children: [
              ListTile(
                title: Text("分享 A"),
                onTap: () {
                  // 关闭dialog 并传值出去
                  Navigator.pop(context, "分享 A");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 B"),
                onTap: () {
                  // 关闭dialog 并传值出去
                  Navigator.pop(context, "分享 B");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 C"),
                onTap: () {
                  // 关闭dialog 并传值出去
                  Navigator.pop(context, "分享 C");
                },
              )
            ],
          ),
        );
      },
    );

    print(res);
  }

  void _showMyDialog() async {
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

  void _flutterToast() {
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
    return Scaffold(
       appBar: AppBar(
         title: Text("Dialog Page"),
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(height: 10,),
           RaisedButton(
             child: Text("AlertDialog"),
             onPressed: () {
               _alertDialog();
             },
           ),
           SizedBox(height: 10,),
           RaisedButton(
             child: Text("SimpleDialog"),
             onPressed: () {
               _simpleDialog();
             },
           ),
           SizedBox(height: 10,),
           RaisedButton(
             child: Text("showModalBottomSheet"),
             onPressed: () {
               _showModalBottomSheet();
             },
           ),
           SizedBox(height: 10,),
           RaisedButton(
             child: Text("自定义Dialog"),
             onPressed: () {
               _showMyDialog();
             },
           ),
           SizedBox(height: 10,),
           RaisedButton(
             child: Text("FlutterToast"),
             onPressed: () {
               _flutterToast();
             },
           ),
         ],
       ),
    );
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
