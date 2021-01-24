import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/common/Prefix.dart';
import 'package:helloworld/apps/dictionary/components/IndexPrefix.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/apps/dictionary/components/InputItemAdder.dart';


class InputAdder extends StatelessWidget {
  final List<Map> _data;
  final List<String> _options;

  InputAdder({Key key, List<Map> data, List<String> options})
    : _data = data,
      _options = options,
     super(key:key);

  _children(BuildContext context) {
    List<Widget> children = [];

    var delete = (Object that) {
      _data.remove(that);
      Provider.of<Store>(context, listen:false).updateUI();
    };

    _data.forEach((Map val){
      children.add(
        Prefix(
          prefix: IndexPrefix(_data.indexOf(val) + 1),
          child: InputItemAdder(data:val, delete:delete, options:_options, indent: 2,),
          alignment: CrossAxisAlignment.start,)
        ,);
    });

    children.add(IconButton(
                  icon: Icon(Icons.add, color: Color.fromRGBO(158,158,158,1),),
                  onPressed: () {
                    _data.add(
                      {
                        "type":"",
                        "sentences":[]
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
    //print("----- InputAdder build");
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _children(context),
          );
  }
}
