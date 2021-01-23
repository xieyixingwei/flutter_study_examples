import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/LineEdit.dart';
import 'package:helloworld/apps/dictionary/components/TwoLineEdit.dart';


class SentenceAdder extends StatelessWidget {
  final Map _values;
  final Function(Object, String) _delete;



  SentenceAdder({Key key, Map values, Function(Object, String) delete})
    : _values = values,
      _delete = delete,
     super(key:key);


  @override
  Widget build(BuildContext context) {
    print("----- LineEditAdder build ${_values["type"]}");

    List<Widget> children = [];
    children.add(LineEdit(init:_values["type"], width:200, ));

    _values["sentences"].forEach((val){
      children.add(
        Row(
          children: [
            SizedBox(width: 40,),
            TwoLineEdit(
              init: val,
              hintText:["英文例句", "中文例句"],
              width: 300,
              ),
            ],
          )
      );
      children.add(SizedBox(height: 20,));
    });

    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }
}
