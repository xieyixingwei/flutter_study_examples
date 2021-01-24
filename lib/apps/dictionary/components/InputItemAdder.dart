import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/common/Prefix.dart';
import 'package:helloworld/apps/dictionary/components/IndexPrefix.dart';
import 'package:helloworld/apps/dictionary/components/SelectButton.dart';
import 'package:helloworld/apps/dictionary/common/Suffix.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/apps/dictionary/components/LineEdit.dart';
import 'package:helloworld/apps/dictionary/components/PatternLineEdit.dart';


class InputItemAdder extends StatelessWidget {
  final Map _data;
  final Function(Object that) _delete;
  final List<String> _options;
  final int _indent;

  InputItemAdder({Key key, Map data, Function(Object that) delete, List<String> options, int indent=1})
    : _data = data,
      _delete = delete,
      _options = options,
      _indent = indent,
     super(key:key);

  _children(BuildContext context) {
    var delete = (Object that) {
      _data["sentences"].remove(that);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    var updateValue = (String value) {
      _data["type"] = value;
      if(_options != null) {
        Provider.of<Store>(context, listen:false).updateUI();
      }
    };

    List<Widget> children = [];

    if(_options != null) {
      children.add(
        Suffix(
          alignment: CrossAxisAlignment.center,
          child: SelectButton(data:_data["type"], options:_options, title: "选择词性", enterPressed: updateValue,),
          suffix: IconButton(
              icon: Icon(Icons.clear, color:Color.fromRGBO(158,158,158,1)),
              onPressed: () {
                _delete(_data);
              },
            ),
      ));
    }
    else {
      children.add(LineEdit(data:_data["type"], width:200, delete:_delete, deleteObj:_data, onChanged: updateValue,));
    }

    _data["sentences"].forEach((val){
      children.add(
        Padding(
          padding: EdgeInsets.fromLTRB(40,0,0,0),
          child: Prefix(
            prefix: IndexPrefix(_data["sentences"].indexOf(val) + 1, indent: _indent,),
            padding: EdgeInsets.fromLTRB(0,12,0,0),
            child: PatternLineEdit(
              data: val,
              hintText:["英文例句", "中文例句"],
              width: 300,
              delete: delete,
            ),
          ),
        )
      );
      children.add(SizedBox(height: 20,));
    });

    children.add(
      Row(
        children: [
          SizedBox(width: 40,),
          IconButton(
            icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
            onPressed: () {
              _data["sentences"].add(["",""]);
              Provider.of<Store>(context, listen:false).updateUI();
            },
          ),
        ],
      )
    );
    return children;
  }

  @override
  Widget build(BuildContext context) {
    //print("----- LineEditAdder build ${_data["type"]}");

    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _children(context),
          );
  }
}
