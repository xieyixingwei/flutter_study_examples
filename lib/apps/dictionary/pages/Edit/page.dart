import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/pages/Edit/WordEdit.dart';


class EditPage extends StatefulWidget {

  EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  @override
  Widget build(BuildContext context) {
    print("---- EditPage build()");
    print(DateTime.now().millisecondsSinceEpoch);
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 120,
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(30,10,30,10),
          padding: EdgeInsets.all(15),
          child: WordEdit(),
        ),
      ),
    );
  }
}
