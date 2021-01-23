import 'package:flutter/material.dart';


class TextEdit extends StatelessWidget {
  final String _hintText;
  final String _init;
  final int _flex;
  final int _maxLines;
  final double _width;
  final Function(String) _enterPressed;
  final TextEditingController _inputText = TextEditingController();

  TextEdit({String hintText="", String init="", int maxLines = 2, int flex=1, double width=0, Function(String) enterPressed})
    : _hintText = hintText,
      _init = init,
      _flex = flex,
      _maxLines = maxLines,
      _width = width,
      _enterPressed = enterPressed {
      _inputText.text = _init;
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
              if(_enterPressed != null) {
                _enterPressed(value);
              }
              print(value);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    print("----- TextEdit build ${_hintText}");

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
