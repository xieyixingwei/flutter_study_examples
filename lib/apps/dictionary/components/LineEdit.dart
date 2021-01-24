import 'package:flutter/material.dart';


class LineEdit extends StatelessWidget {
  final String _data;
  final String _hintText;
  final int _flex;
  final double _width;
  final Function _delete;
  final Object _deleteObj;
  final Function(String) _onSubmitted;
  final Function(String) _onChanged;
  final TextEditingController _inputText = TextEditingController();

  LineEdit({String data="", String hintText="", int flex=1, double width=0, Function delete, Object deleteObj, Function(String) onSubmitted, Function(String) onChanged})
    : _data = data,
      _hintText = hintText,
      _flex = flex,
      _delete = delete,
      _width = width,
      _deleteObj = deleteObj,
      _onSubmitted = onSubmitted,
      _onChanged = onChanged {
        _inputText.text = _data;
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
              suffixIcon: _delete != null ? IconButton(
                icon: Icon(Icons.clear,),
                onPressed: () {
                  if(_deleteObj != null) _delete(_deleteObj);
                  else _delete(_data);
                },
              ) : null,
            ),
            onSubmitted: (value) {
              if(_onSubmitted != null) _onSubmitted(value);
            },
            onChanged: (value) {
              if(_onChanged != null) _onChanged(value);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    //print("----- LineEdit build ${_hintText}");

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
