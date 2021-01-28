import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class ModalBottomSheetExampleA extends ShowPage {
  final String title = "ModalBottomSheet";
  void _showModalBottomSheet(BuildContext context) async {
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("ModalBottomSheet"),
        onPressed: () {
          _showModalBottomSheet(context);
        },
      ),);
  }
}
