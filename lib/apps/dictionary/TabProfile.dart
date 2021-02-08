import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/pages/LoginPage.dart';

class TabProfile extends StatefulWidget {
  TabProfile({Key key}) : super(key: key);

  @override
  _TabProfileState createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
