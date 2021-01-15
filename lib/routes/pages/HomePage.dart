import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final List _configs = [
    {
      "title":"基础组件的使用",
      "route":"/BaseWidgetPage",
    },
  ];

  List<Widget> _items(BuildContext context) {
    var items = this._configs.map((e) => ListTile(
                  title: Text(e["title"]),
                  leading: Icon(Icons.circle),
                  onTap: () {
                    Navigator.pushNamed(context, e["route"]);
                  },
                ));
    return items.toList();
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children:  this._items(context),
        ),
      );
    }
}
