import 'package:flutter/material.dart';
import 'package:helloworld/common/SelectDialog.dart';


class SentencePatternEdit extends StatefulWidget {
  final Map _data;
  final int _index;
  final int _indent;
  final Function(Object) _delete;
  final List<Function(String)> _onChanged;
  final TextEditingController _controllerA = new TextEditingController();
  final TextEditingController _controllerB = new TextEditingController();

    SentencePatternEdit({
      Key key,
      Map data,
      int index=0,
      int indent=1,
      Function(Object) delete,
      List<Function(String)> onChanged})
    : _data = data,
      _index = index,
      _indent = indent,
      _delete = delete,
      _onChanged = onChanged,
      super(key:key) {
        _controllerA.text = data["pattern"][0];
        _controllerB.text = data["pattern"][1];
      }

  @override
  _SentencePatternEditState createState() => _SentencePatternEditState();
}

class _SentencePatternEditState extends State<SentencePatternEdit> {
  bool status = true;
  final List<String> options = ["删除", "添加tag", "选择时态", "选择句型", "设置同义句", "设置反义句"];

  _menuItems(BuildContext context) => options.map(
    (String option) => PopupMenuItem<String>(
                            value: option,
                            textStyle: TextStyle(fontWeight: FontWeight.w600),           // 文本样式
                            child: Text(option, style:TextStyle(color: Colors.blue) ),  // 子控件
                          )).toList();

  _suffixMenu(BuildContext context) => PopupMenuButton<String> (
              elevation: 5, // 设置立体效果的阴影
              padding: EdgeInsets.all(5), // 菜单项的内边距
              offset: Offset(0,0), // 控制菜单弹出的位置()
              onCanceled: () => print("---- cancel"),
              onSelected: (String val) { // 选中某个值退出的回调函数,
                print(val);
                if(val == "删除" && widget._delete != null) widget._delete(widget._data);
                if(val == "添加tag") popSelectDialog(context, val, ["日常","商务","问候"],(val)=>print("添加tag: $val"));
              },
              itemBuilder: (context) {
                return _menuItems(context);
              },
    );

  _suffix(BuildContext context) => _suffixMenu(context);

  _englishSentenceEdit(BuildContext context) => MouseRegion(
      onEnter: (e) => setState((){ status = !status;}),
      onExit: (e)=> setState((){ status = !status;}),
      //child: 
      //GestureDetector(
      //onTap: () {
      //  print('MyButton was tapped!');
      //  status = !status;
      //},
      child:TextField(
        maxLines: 1,
        controller: widget._controllerA,
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          hintText: "英文例句",
          suffixIcon: Offstage(
            offstage: status,
            child: _suffix(context),
          ),
        ),
        onChanged: (String value){
          if(widget._onChanged != null) widget._onChanged[0](value);
        }
     // ),
    )
  );

  _chineseSentenceEdit(BuildContext context) => TextField(
        maxLines: 1,
        controller: widget._controllerB,
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          hintText: "中文例句",
        ),
        onChanged: (String value){
          if(widget._onChanged != null) widget._onChanged[1](value);
        }
  );

  @override
  Widget build(BuildContext context) {
    //print("----- PatternLineEdit build ${_hintText[0]}");

    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _englishSentenceEdit(context),
                  _chineseSentenceEdit(context),
              ],
        );
  }
}

/*
class SentencePatternEdit extends StatelessWidget {
  final int _index;
  final int _indent;
  final Function(Object) _delete;
  final List<Function(String)> _onChanged;
  final TextEditingController _controllerA = new TextEditingController();
  final TextEditingController _controllerB = new TextEditingController();

  SentencePatternEdit({
    Key key,
    List<String> data=const ["", ""],
    int index=0,
    int indent=1,
    Function(Object) delete,
    List<Function(String)> onChanged})
    : _index = index,
      _indent = indent,
      _delete = delete,
      _onChanged = onChanged,
      super(key:key) {
        _controllerA.text = data[0];
        _controllerB.text = data[1];
      }

  @override
  Widget build(BuildContext context) {
    //print("----- PatternLineEdit build ${_hintText[0]}");

    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    maxLines: 1,
                    controller: _controllerA,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: "英文例句",
                    ),
                    onChanged: (String value){
                      if(_onChanged != null) _onChanged[0](value);
                    }
                  ),
                  TextField(
                    maxLines: 1,
                    controller: _controllerB,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: "中文例句",
                    ),
                    onChanged: (String value){
                      if(_onChanged != null) _onChanged[1](value);
                    }
                  ),
              ],
        );
  }
}
*/
