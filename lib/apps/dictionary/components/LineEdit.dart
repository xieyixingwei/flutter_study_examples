import 'package:flutter/material.dart';


class LineEdit extends StatelessWidget {
  final String _init;
  final String _hintText;
  final int _flex;
  final double _width;
  final Function(String) _enterPressed;
  final TextEditingController _inputText = TextEditingController();

  LineEdit({String init="", String hintText="", int flex=1, double width=0, Function(String) enterPressed})
    : _init = init,
      _hintText = hintText,
      _flex = flex,
      _width = width,
      _enterPressed = enterPressed {
        _inputText.text = _init;
      }

  _textFiled() {
    return TextField(
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
            ),
            controller: _inputText,
            decoration: InputDecoration(
              hintText: _hintText,
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
    print("----- LineEdit build ${_hintText}");

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

/*
class LineEdit extends StatelessWidget {
  final String _hintText;
  final int _flex;
  final Function _delete;
  final TextEditingController _inputText = TextEditingController();

  LineEdit({String hintText="", int flex=1, Function delete})
    : _hintText = hintText,
      _flex = flex,
      _delete = delete;

  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: _flex,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    controller: _inputText,
                    decoration: InputDecoration(
                      hintText: _hintText,
                    ),
                  ),
                ),
                _delete != null ? InkWell(
                  child: Icon(Icons.cancel),
                  onTap: (){
                    _delete(this);
                  },
                ) : Center(),
              ],
            ),
    );
  }
}
*/
