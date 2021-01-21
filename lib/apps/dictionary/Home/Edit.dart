import 'package:flutter/material.dart';


class EditInput extends StatelessWidget {
  String _hintText;
  var _inputText = TextEditingController();

  EditInput({String hintText=""})
    : _hintText = hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
          maxLines: 1,
          /*
          style: TextStyle(
            fontSize: 14,
          ),
          controller: _inputText,
          decoration: InputDecoration(
            hintText: _hintText,
            border: OutlineInputBorder(),
          ),*/
        );
  }
}


class Edit extends StatefulWidget {
  Edit({Key key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Row(
          children: [
            Text("input"),
            //EditInput(hintText:"单词"),
            //EditInput(hintText:"音标(美)"),
            //EditInput(hintText:"音标(英)"),
          ],
        ),
        
        SizedBox(height: 10,),

      ],
    );
  }
}
