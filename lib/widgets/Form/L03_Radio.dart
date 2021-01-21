import 'package:flutter/material.dart';

class RadioExampleA extends StatefulWidget {
  RadioExampleA({Key key})
    : super(key: key);

  @override
  _RadioExampleA createState() => _RadioExampleA();
}

class _RadioExampleA extends State<RadioExampleA> {
  List<int> _radioValue = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 1,
                groupValue: this._radioValue[0],
                onChanged: (value) {
                  print(value);
                  setState(() {
                    this._radioValue[0] = value;
                  });
                },
              ),
              Radio(
                value: 2,
                groupValue: this._radioValue[0],
                onChanged: (value) {
                  print(value);
                  setState(() {
                    this._radioValue[0] = value;
                  });
                },
              ),
            ],
          ),
          RadioListTile(
            value: 1,
            groupValue: this._radioValue[1],
            title: Text("男"),
            subtitle: Text("男人"),
            secondary: Icon(Icons.folder),
            selected: this._radioValue[1] == 1,
            onChanged: (value) {
              setState(() {
                this._radioValue[1] = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: this._radioValue[1],
            title: Text("女"),
            subtitle: Text("女人"),
            secondary: Image.asset("images/b.jpg"),
            selected: this._radioValue[1] == 2,
            onChanged: (value) {
              setState(() {
                this._radioValue[1] = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
