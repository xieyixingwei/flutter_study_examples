
import 'package:flutter/material.dart';
import 'package:helloworld/apps/postman/HttpAction.dart';
import 'package:http/http.dart' as http;

class Param extends StatefulWidget {
  final Function(http.Response) _callback;

  Param(this._callback, {Key key}) : super(key: key);

  @override
  _ParamState createState() => _ParamState();
}

class _ParamState extends State<Param> {

  final List<String> methods = ["GET", "POST", "PUT", "PATCH", "DELETE"];
  final List<List> _requstHeader = [
    [false, "form-data"],
    [true, "x-www-form-urlencoded"],
    [false, "raw"],
    [false, "binary"],
  ];
  final TextEditingController _inputTextCtrl = TextEditingController();
  HttpAction _http;
  List<List> _param = []; // [true/false, "key", "value"]
  int _currentRequestHeader = 1;
  String _currentMethod = "POST";
  String _url = "http://192.168.1.10:5005/restframework/";

  @override
  void initState() {
    super.initState();

    _currentMethod = methods[0];
    _inputTextCtrl.text = _url;
    _http = HttpAction(widget._callback);
  }

  _selectMethod(BuildContext context) =>
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38, width: 1),
        //边框圆角设置
        borderRadius: BorderRadius.vertical(
          top: Radius.elliptical(4, 4),
          bottom: Radius.elliptical(4, 4)
        ),
      ),
      child:DropdownButton(
        hint: Text("选择方法"),
        value: _currentMethod,
        items: methods.map(
          (value)=>DropdownMenuItem(child: Text(value), value: value,)
        ).toList(),
        onChanged: (value) => setState(() => _currentMethod = value),
      ),
    );

  _inputUrl(BuildContext context) =>
    Row(
      children: [
        _selectMethod(context),
        Expanded(
          child: TextField(
            controller: _inputTextCtrl,
            decoration: InputDecoration(
              hintText: "url",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => _url = value,
          ),
        ),
        SizedBox(width: 10,),
        Container(
          child: RaisedButton(
            child: Text("Send"),
            onPressed: () => _http.send(
              _currentMethod,
              _url,
              _requstHeader[_currentRequestHeader][1],
              _param),
          ),
        )
      ],
    );

  _selectRequstHeader(BuildContext context) =>
    Row(
      children: _requstHeader.map((e) =>
        Expanded(
          child: RadioListTile(
            value: _requstHeader.indexOf(e),
            groupValue: _currentRequestHeader,
            title: Text(e[1]),
            selected: e[0],
            onChanged: (int value) {
              setState(() => _currentRequestHeader = value);
              print(value);
            } ,
          ),
        )
      ).toList()
    );

  _inputParam(BuildContext context) {
    List<TableRow> params = _param.map((e) => 
        TableRow(
          children: [
            Checkbox(
              value: e[0],
              onChanged: (bool onoff) => setState((){e[0] = onoff;}),
            ),
            TextField(
              onChanged: (value) => e[1] = value,
            ),
            TextField(
              onChanged: (value) => e[2] = value,
            ),
          ],
        )).toList();

    params.insert(
      0,
      TableRow(
        children: [
          Text(""),
          Text("Key", style: TextStyle(fontWeight: FontWeight.bold),),

          Text("Value", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
    ));

    params.add(
      TableRow(
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => setState(() => _param.add([true, "", ""])),
          ),
          Text(""),
          Text(""),
        ],
      ),
    );

    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      children: params,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children:[
              _inputUrl(context),
              _selectRequstHeader(context),
              _inputParam(context),
            ],
          );
  }
}
