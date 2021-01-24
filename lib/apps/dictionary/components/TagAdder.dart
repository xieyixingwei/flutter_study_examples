import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/apps/dictionary/components/SelectorDialog.dart';
import 'package:helloworld/apps/dictionary/components/Tag.dart';


class TagAdder extends StatelessWidget {
  final List<String> _data;
  final List<String> _options;
  final String _label;
  final String _title;

  TagAdder({Key key, List<String> data, List<String> options, String label, String title})
    : _data = data,
      _options = options,
      _label = label,
      _title = title,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    //print("----- TagAdder build ${_title}");

    var delete = (String value) {
      _data.remove(value);
      Provider.of<Store>(context, listen:false).updateUI();
    };


    List<Widget> children = [];
    children.add(Text(_label,));
    if(_data != null) {
      _data.forEach((String val)=>children.add(Tag(title:val, delete:delete,)));
    }
    children.add(SelectorDialog(
      data: _data,
      options: _options,
      //title: _title,
      icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
      tooltip: _title,
    ));

    return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          children: children,
        );
  }
}
