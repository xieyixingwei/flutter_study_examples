import 'package:flutter/material.dart';


class CategoryTab extends StatefulWidget {
  CategoryTab({Key key}) : super(key: key);

  @override
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Text("Category Page"),
        ],
    );
  }
}
