import 'package:flutter/material.dart';


class TabContacts extends StatefulWidget {
  TabContacts({Key key}) : super(key: key);

  @override
  _TabContactsState createState() => _TabContactsState();
}


class _TabContactsState extends State<TabContacts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Contacts"),
    );
  }
}
