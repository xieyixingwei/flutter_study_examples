import 'package:flutter/material.dart';


class Tag extends StatelessWidget {
  final String _title;
  final Color _color;
  final Function(Object, String) _delete;

  Tag({String title, Color color, Function(Object, String) delete})
    : _title = title,
      _color = color,
      _delete = delete;

  @override
  Widget build(BuildContext context) {
    print("----- Tag build ${_title}");
    return Row(
        mainAxisSize: MainAxisSize.min, //宽度由内容撑开
        children: [Container(
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _color,
            border: Border.all(
              color: Colors.blue,
              width: 1
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5)
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, //宽度由内容撑开
            children: [
              Text(_title),
              InkWell(
                child: Icon(Icons.cancel),
                onTap: (){
                  if(_delete != null) {
                    _delete(this, _title);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
