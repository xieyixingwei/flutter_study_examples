import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/Home/Body.dart';
import 'package:helloworld/apps/dictionary/Home/Header.dart';

class TabHome extends StatefulWidget {
  TabHome({Key key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children:[
            HomeHeader(),
            SizedBox(height: 10,),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
