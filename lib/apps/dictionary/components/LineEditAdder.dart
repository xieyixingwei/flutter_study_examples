import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/Tag.dart';
import 'package:helloworld/apps/dictionary/components/LineEdit.dart';


class LineEditAdder extends StatelessWidget {
  final String _label;
  final List<String> _values;
  final Function(String) _enterPressed;
  final Function(Object, String) _delete;

  LineEditAdder({Key key, String label, List<String> values, Function(String) enterPressed, Function(Object, String) delete})
    : _label = label,
      _values = values,
      _enterPressed = enterPressed,
      _delete = delete,
     super(key:key);


  @override
  Widget build(BuildContext context) {
    print("----- LineEditAdder build ${_label}");

    List<Widget> children = [];
    children.add(Text(_label,));
    if(_values != null) {
      _values.forEach((String val)=>children.add(Tag(title:val, delete:_delete,)));
    }
    children.add(LineEdit(width: 100, enterPressed: _enterPressed,));

    return Wrap(
            spacing: 10,
            runSpacing: 10,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: children,
          );
  }
}

/*
class LineEditAdder extends StatefulWidget {
  String _label;
  String _hintText;
  List<String> _values;

  LineEditAdder({Key key, String label, String hintText, List<String> values})
    : _label = label,
      _hintText = hintText,
      _values = values,
      super(key: key);

  @override
  _LineEditAdderState createState() => _LineEditAdderState(label:_label, hintText:_hintText, values:_values);
}


class _LineEditAdderState extends State<LineEditAdder> {
  String _label;
  String _hintText;
  List<String> _values;

  _LineEditAdderState({String label, String hintText, List<String> values})
    : _label = label,
      _hintText = hintText,
      _values = values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var lineEditDeleteCallBack = (Object obj) {
      setState(()=>_lineEdits.remove(obj));
    };

    var selectorCallBack = (String value) {
        setState(
          (){
            _lineEdits.insert(
              _lineEdits.length-1,
              LineEdit(
                hintText: value,
                delete: lineEditDeleteCallBack,
              ),
            );
            _lineEdits.insert(_lineEdits.length-1, SizedBox(width: 40,));
          }
        );
      };

    _selector = Selector(
      title: _title,
      options: _options,
      callback: selectorCallBack,
    );
    _lineEdits.add(_selector);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
          children: _lineEdits,
        );
  }
}
*/
/*
class AddLineEdit extends StatefulWidget {
  String _title;
  List<String> _options;

  AddLineEdit({Key key, String title, List<String> options})
    : _title = title,
      _options = options,
      super(key: key);

  @override
  _AddLineEditState createState() => _AddLineEditState(title:_title, options:_options);
}


class _AddLineEditState extends State<AddLineEdit> {
  String _title;
  List<String> _options;
  Selector _selector;
  List<Widget> _lineEdits = [];

  _AddLineEditState({String title, List<String> options})
    : _title = title,
      _options = options;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var lineEditDeleteCallBack = (Object obj) {
      setState(()=>_lineEdits.remove(obj));
    };

    var selectorCallBack = (String value) {
        setState(
          (){
            _lineEdits.insert(
              _lineEdits.length-1,
              LineEdit(
                hintText: value,
                delete: lineEditDeleteCallBack,
              ),
            );
            _lineEdits.insert(_lineEdits.length-1, SizedBox(width: 40,));
          }
        );
      };

    _selector = Selector(
      title: _title,
      options: _options,
      callback: selectorCallBack,
    );
    _lineEdits.add(_selector);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
          children: _lineEdits,
        );
  }
}
*/
