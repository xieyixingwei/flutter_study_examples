import 'package:flutter/material.dart';


class TwoLineEdit extends StatelessWidget {
  final List<String> _init;
  final List<String> _hintText;
  final int _flex;
  final double _width;
  final Function(Object) _delete;
  final TextEditingController _inputTextA = TextEditingController();
  final TextEditingController _inputTextB = TextEditingController();

  TwoLineEdit({List<String> init=const ["", ""], List<String> hintText=const ["", ""], int flex=1, double width=0, Function(Object) delete})
    : _init = init,
      _hintText = hintText,
      _flex = flex,
      _width = width,
      _delete = delete {
        _inputTextA.text = _init[0];
        _inputTextB.text = _init[1];
      }

  _textFiled(String hintText, TextEditingController ctrl) {
    return TextField(
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
            ),
            controller: ctrl,
            decoration: InputDecoration(
              hintText: hintText,
            ),
          );
  }

  __textFiled(String hintText, TextEditingController ctrl) {
    return _width != 0 ? 
          SizedBox(
            width: _width,
            child: _textFiled(hintText, ctrl),
          ) :
          Expanded(
            flex: _flex,
            child: _textFiled(hintText, ctrl),
          );
  }

  @override
  Widget build(BuildContext context) {
    print("----- LineEdit build ${_hintText[0]}");

    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                  children: [
                    __textFiled(_hintText[0], _inputTextA),
                    RaisedButton(
                      child: Text("删除"),
                      onPressed: () {
                        if(_delete != null) {
                          _delete(this);
                        }
                      },
                    ),
                  ],
                ),
                __textFiled(_hintText[1], _inputTextB),
            ],
    );
  }
}
