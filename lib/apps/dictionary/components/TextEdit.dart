import 'package:flutter/material.dart';


class TextEdit extends StatelessWidget {
  final String _hintText;
  final int _flex;
  final int _maxLines;
  final double _width;
  final Function(String) _onSubmitted;
  final Function(String) _onChanged;
  final TextEditingController _inputText = TextEditingController();

  TextEdit({String data, String hintText="",  int maxLines = 2, int flex=1, double width=0, Function(String) onSubmitted, Function(String) onChanged})
    : _hintText = hintText,
      _flex = flex,
      _maxLines = maxLines,
      _width = width,
      _onSubmitted = onSubmitted,
      _onChanged = onChanged {
      _inputText.text = data;
  }

  _textFiled() {
    return TextField(
            maxLines: _maxLines,
            style: TextStyle(
              fontSize: 14,
            ),
            controller: _inputText,
            decoration: InputDecoration(
              hintText: _hintText,
              border: OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              if(_onSubmitted != null) _onSubmitted(value);
              //print(value);
            },
            onChanged: (value) {
              if(_onChanged != null) _onChanged(value);
              //print(value);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    //print("----- TextEdit build ${_hintText}");

    return _width != 0 ? 
          SizedBox(
            width: _width,
            child: _textFiled()
          ) :
          Expanded(
            flex: _flex,
            child: _textFiled(),
          );
  }
}
