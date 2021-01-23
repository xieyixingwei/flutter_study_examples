import 'package:flutter/material.dart';


class Selector extends StatelessWidget {
  final String _title;
  final Widget _icon;
  final String _tooltip;
  final List<String> _options;
  final Function(String) _enterPressed;

  Selector({Key key, String title, Widget icon, String tooltip="", List<String> options, Function(String) enterPressed})
    : _title = title,
      _icon = icon,
      _tooltip = tooltip,
      _options = options,
      _enterPressed = enterPressed,
      super(key: key);

  void _simpleDialog(BuildContext context) async {
    var optionWidgets = _options.map(
      (e) => SimpleDialogOption(
              child: Text(e),
              onPressed: () {
                // 关闭dialog 并传值出去
                Navigator.pop(context, e);
              }
            )
          );

    String res = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text(_title != null ? _title : _tooltip),
          children: optionWidgets.toList(),
        );
      },
    );

    if(_enterPressed != null) {
      _enterPressed(res);
    }
  }

  @override
  Widget build(BuildContext context) {
    var onPressed = (){if(_options != null) _simpleDialog(context);};
  
    return _title != null ? 
          RaisedButton(
            child: Text(_title),
            onPressed: onPressed,
          ) : (
            _icon != null ?
              IconButton(
                icon: _icon,
                tooltip: this._tooltip,
                onPressed: onPressed,
            ) : Text("Error")
          );
  }
}

/*
class Selector extends StatefulWidget {
  String _title;
  int selected;
  List<String> _options;

  Selector({Key key, String title, List<String> options, int selected=0})
    : _title = title,
      _options = options,
      selected = selected,
      super(key: key);

  @override
  _SelectorState createState() => _SelectorState(title:_title, options:_options, selected:selected);
}

class _SelectorState extends State<Selector> {
    _SelectorState({String title, List<String> options, int selected=0})
    : _title = title,
      _options = options,
      selected = selected;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();

      _children.add(IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _simpleDialog(context);
              },
            ));
    }
*/
/*
class Selector extends StatefulWidget {
  final String _title;
  final int _selected;
  final List<String> _options;
  final String _tooltip;
  final Function _callback;

  Selector({Key key, String title, String tooltip, List<String> options, int selected=0, Function() callback})
    : _title = title,
      _tooltip = tooltip,
      _options = options,
      _selected = selected,
      _callback = callback,
      super(key: key);

  @override
  _SelectorState createState() => _SelectorState(title:_title, options:_options, selected:_selected, callback: _callback);
}

class _SelectorState extends State<Selector> {
  String _title;
  String selected;
  List<String> _options;
  Function _callback;

  _SelectorState({String title, List<String> options, int selected=0, Function callback})
    : _title = title,
      _options = options,
      selected = options != null ? options[selected] : "",
      _callback = callback;

  void _simpleDialog(BuildContext context) async {
    var optionWidgets = _options.map(
      (e) => SimpleDialogOption(
              child: Text(e),
              onPressed: () {
                // 关闭dialog 并传值出去
                Navigator.pop(context, e);
              }
            )
          );

    var res = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text(_title),
          children: optionWidgets.toList(),
        );
      },
    );
    setState(() {
      selected = res;
    });

    _callback(selected);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(Icons.add),
            tooltip: this._title,
            onPressed: () {
              _options != null ? _simpleDialog(context) : _callback("");
            },
          );
  }
}
*/
