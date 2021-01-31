import 'package:flutter/material.dart';
import 'package:helloworld/apps/postman/LeftDrawer.dart';
import 'package:helloworld/components/ShowPage.dart';
import 'Body.dart';


class PostManApp extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "PostMan";
  final String subtitle = "HTTP请求";

  PostManApp({Key key}) : super(key: key);

  @override
  _PostManAppState createState() => _PostManAppState();
}

class _PostManAppState extends State<PostManApp> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: HomePage(),
        );
  }
}

class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List> _history = [
    ];

  _record(String method, String api){
    setState(() {
      _history.add([method, api]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: LeftDrawer(_history),
              ),
              Expanded(
                flex: 5,
                child: Body(_record),
              )
            ],
    );
  }
}
