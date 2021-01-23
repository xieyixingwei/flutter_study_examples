import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/Selector.dart';
import 'package:helloworld/apps/dictionary/components/Tag.dart';



class TagAdder extends StatelessWidget {
  final String _label;
  final String _title;
  final List<String> _values;
  final List<String> _options;
  final Function _enterPressed;
  final Function(Object, String) _delete;
  Selector _tagSelector;

  TagAdder({Key key, String label, String title, List<String> options, List<String> values, Function enterPressed, Function(Object, String) delete})
    : _label = label,
      _title = title,
      _options = options,
      _values = values,
      _enterPressed = enterPressed,
      _delete = delete,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    print("----- TagAdder build ${_title}");

    List<Widget> children = [];
    children.add(Text(_label,));
    if(_values != null) {
      _values.forEach((String val)=>children.add(Tag(title:val, delete:_delete,)));
    }
    children.add(Selector(
      //title: _title,
      icon: Icon(Icons.add),
      tooltip: _title,
      options: _options,
      enterPressed: _enterPressed,
    ));

    return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          children: children,
        );
  }
}
