import 'package:flutter/material.dart';


class SearchInput extends StatelessWidget {
  var _inputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
          maxLines: 1,
          style: TextStyle(
            fontSize: 18,
          ),
          controller: _inputText,
          decoration: InputDecoration(
            hintText: "输入单词或句子",
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              iconSize: 38,
              icon: Icon(Icons.search),
              onPressed: () {
                print("search ........");
                print(_inputText.text);
              },
            ),
          ),
        );
  }
}
