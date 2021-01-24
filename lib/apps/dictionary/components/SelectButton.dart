import 'package:flutter/material.dart';


class SelectButton extends StatelessWidget {
  final String _data;
  final List<String> _options;
  final String _title;
  final String _tooltip;
  final Function(String) _enterPressed;

  SelectButton({Key key, String data="", List<String> options, String title, String tooltip="", Function(String) enterPressed})
    : _data = data,
      _options = options,
      _title = title,
      _tooltip = tooltip,
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

    if(_enterPressed != null) _enterPressed(res);

    //Provider.of<Store>(context, listen:false).updateUI();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        child: InkWell(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_data != "" ? _data : _title, style: TextStyle(fontSize:16, fontWeight:FontWeight.w600),),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: () => _simpleDialog(context),
        ),
      );
  }
}
