import 'package:flutter/material.dart';


class PatternLineEdit extends StatelessWidget {
  final List<String> _data;
  final List<String> _hintText;
  final int _flex;
  final double _width;
  final Function(Object) _delete;
  final TextEditingController _inputTextA = TextEditingController();
  final TextEditingController _inputTextB = TextEditingController();

  PatternLineEdit({List<String> data=const ["", ""],
               List<String> hintText=const ["", ""],
               int flex=1,
               double width=0,
               Function(Object) delete})
    : _data = data,
      _hintText = hintText,
      _flex = flex,
      _width = width,
      _delete = delete {
      _inputTextA.text = data[0];
      _inputTextB.text = data[1];
    }


  _textFiled(TextEditingController ctrl, InputDecoration decoration, int index) {
    return TextField(
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
            ),
            controller: ctrl,
            decoration: decoration,
            onChanged: (String value){
              //print("-----------${value}");
              _data[index]=value;
            }
          );
  }

  __textFiled(TextEditingController ctrl, InputDecoration decoration, int index) {
    return _width != 0 ? 
          SizedBox(
            width: _width,
            child: _textFiled(ctrl, decoration, index),
          ) :
          Expanded(
            flex: _flex,
            child: _textFiled(ctrl, decoration, index),
          );
  }

  @override
  Widget build(BuildContext context) {
    //print("----- PatternLineEdit build ${_hintText[0]}");

    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  __textFiled(_inputTextA, InputDecoration(
                    hintText: _hintText[0],
                    suffixIcon: IconButton(
                      icon:Icon(Icons.clear),
                      onPressed: (){
                        if(_delete != null) _delete(_data);
                      },
                    ),
                  ),
                  0
                ),
                  __textFiled(_inputTextB, InputDecoration(
                    hintText: _hintText[1],
                    ),
                    1
                ),
              ],
        );
  }
}
