import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/pages/Edit/ItemEdit.dart';
import 'package:helloworld/common/DeletableDropdownButton.dart';
import 'package:helloworld/common/OnOffWidget.dart';
import 'package:helloworld/common/PopupMenu.dart';
import 'package:helloworld/common/Suffix.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';


class OnePartOfSpeech extends StatelessWidget {
  final Map _data;
  final int _index;
  final Function(Object) _delete;
  final List<String> _options;

  OnePartOfSpeech({Key key, Map data, int index, Function(Object) delete, List<String> options})
    : _data = data,
      _index = index,
      _delete = delete,
      _options = options,
     super(key:key);

  _head(BuildContext context) {
    return DeletableDropdownButton(
        options:_options,
        value: _data["type"],
        close: (value) {
          _data["type"] = value;
          Provider.of<Store>(context, listen:false).updateUI();
        },
        delete: (){if(_delete != null) _delete(_data);},
      );
  }

  _children(BuildContext context) {
    var delete = (Object obj) {
      _data["items"].remove(obj);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    List<Widget> children = [_head(context)];

    _data["items"].forEach((val){
      children.add(
        Padding(
          padding: EdgeInsets.fromLTRB(20,0,0,0),
          child: ItemEdit(
              data: val,
              index: _data["items"].indexOf(val) + 1,
              indent: 3,
              delete: delete,
            ),
          )
      );
    });

    children.add(
      Padding(
        padding: EdgeInsets.fromLTRB(20,0,0,20),
        child: IconButton(
          icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
          padding: EdgeInsets.zero,
          tooltip: "添加同性释义",
          splashRadius:1,
          onPressed: () {
            _data["items"].add(
              {
                "type":"",
                "sentences":[blankSentence(),]
              }
            );
            Provider.of<Store>(context, listen:false).updateUI();
          },
        ),
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


class PartOfSpeechEdit extends StatelessWidget {

  PartOfSpeechEdit({Key key}) : super(key:key);

  _children(BuildContext context) {
    List<Map> data = Provider.of<Store>(context, listen:true).partOfSpeech;
    List<String> options = Provider.of<Store>(context, listen:true).partOfSpeechOptions;
    List<Widget> children = [];

    var delete = (Object that) {
      data.remove(that);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    data.forEach((val){
      children.add(OnePartOfSpeech(data:val, index:data.indexOf(val) + 1, delete:delete, options:options));
    });

    children.add(
      Padding(
        padding: EdgeInsets.fromLTRB(20,0,0,20),
        child: IconButton(
          icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
          padding: EdgeInsets.zero,
          tooltip: "添加释义",
          splashRadius:1,
          onPressed: () {
            data.add(
              {
                "type":"",
                "items":[]
              }
            );
            Provider.of<Store>(context, listen:false).updateUI();
          },
        ),
      )
    );
    return children;
  }

  @override
  Widget build(BuildContext context) {
    //print("----- PartOfSpeech build");
    return OnOffWidget(
            label: "词性",
            hide: Provider.of<Store>(context, listen:true).onOffWidget[2],
            click: (bool status){ Provider.of<Store>(context, listen:false).onOffWidget[2]=!status; Provider.of<Store>(context, listen:false).updateUI();},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _children(context),
            )
          );
  }
}
