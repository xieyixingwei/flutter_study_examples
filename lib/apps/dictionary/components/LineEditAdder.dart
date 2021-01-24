import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/apps/dictionary/components/Tag.dart';
import 'package:helloworld/apps/dictionary/components/LineEdit.dart';


class LineEditAdder extends StatelessWidget {
  final List<String> _data;
  final String _label;
  final double _width;

  LineEditAdder({Key key, List<String> data, String label, double width=100})
    : _data = data,
      _label = label,
      _width = width,
     super(key:key);

  _children(BuildContext context) {
    var delete = (String value) {
      _data.remove(value);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    var add = (String value) {
      _data.add(value);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    List<Widget> children = [];
    children.add(Text(_label,));
    if(_data != null) {
      _data.forEach((String val)=>children.add(Tag(title:val, delete:delete,)));
    }
    children.add(LineEdit(width: _width, onSubmitted:add));

    return children;
  }

  @override
  Widget build(BuildContext context) {
    //print("----- LineEditAdder build ${_label}");
    return Wrap(
            spacing: 10,
            runSpacing: 10,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: _children(context),
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
