import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  TabHome({Key key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home"),
    );
  }
}
