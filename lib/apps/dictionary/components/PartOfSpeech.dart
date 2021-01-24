import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/IndexPrefix.dart';
import 'package:helloworld/apps/dictionary/components/InputItemAdder.dart';
import 'package:helloworld/apps/dictionary/common/Prefix.dart';
import 'package:helloworld/apps/dictionary/components/SelectButton.dart';
import 'package:helloworld/apps/dictionary/common/Suffix.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';


class OnePartOfSpeech extends StatelessWidget {
  final Map _data;
  final List<String> _options;
  final Function(Object that) _delete;

  OnePartOfSpeech({Key key, Map data, List<String> options, Function(Object that) delete})
    : _data = data,
      _options = options,
      _delete = delete,
     super(key:key);

  _children(BuildContext context) {
    var delete = (Object obj) {
      _data["items"].remove(obj);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    var updateValue = (String value) {
      _data["type"] = value;
      Provider.of<Store>(context, listen:false).updateUI();
    };

    List<Widget> children = [];

    //children.add(LineEdit(data:_data["type"], width:200, delete:_delete, deleteObj:_data, onChanged: updateValue,));
    children.add(
      Suffix(
        child: SelectButton(data:_data["type"], options:_options, title: "选择词性", enterPressed: updateValue,),
        alignment: CrossAxisAlignment.center,
        suffix: IconButton(
            icon: Icon(Icons.clear, color:Color.fromRGBO(158,158,158,1),),
            onPressed: () {
              _delete(_data);
            },
          ),
      ));

    _data["items"].forEach((val){
      children.add(
        Padding(
          padding: EdgeInsets.fromLTRB(40,0,0,0),
          child: Prefix(
            prefix: IndexPrefix(_data["items"].indexOf(val) + 1, indent:2,),
            padding: EdgeInsets.fromLTRB(0,13,0,0),
            child: InputItemAdder(
              data: val,
              indent: 3,
              delete: delete,
            ),
          )
        ),
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
              _data["items"].add({
                "type":"",
                "sentences":[]
              });
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
    //print("----- OnePartOfSpeech build ${_data["type"]}");
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _children(context),
          );
  }
}


class PartOfSpeech extends StatelessWidget {
  final List<Map> _data;
  final List<String> _options;

  PartOfSpeech({Key key, List<Map> data, List<String> options,})
    : _data = data,
      _options = options,
     super(key:key);

  _children(BuildContext context) {
    List<Widget> children = [];

    var delete = (Object that) {
      _data.remove(that);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    _data.forEach((val){
      children.add(
        Prefix(
          prefix: IndexPrefix(_data.indexOf(val) + 1),
          padding: EdgeInsets.fromLTRB(0,8,0,0),
          child: OnePartOfSpeech(data:val, options:_options, delete:delete),
        ));
    });

    children.add(IconButton(
                  icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                  onPressed: () {
                    _data.add(
                      {
                        "type":"",
                        "items":[]
                      }
                    );
                    Provider.of<Store>(context, listen:false).updateUI();
                  },
                ),
              );
    return children;
  }

  @override
  Widget build(BuildContext context) {
    //print("----- PartOfSpeech build");
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _children(context),
          );
  }
}
