import 'package:flutter/material.dart';


class LeftDrawer extends StatefulWidget {
  final List<List> _history; // ["GET", "url"]

  LeftDrawer(this._history, {Key key}) : super(key: key);

  @override
  _LeftDrawerState createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {

  Color _methodColor(String method) {
    if(method == "GET") return Colors.pink;
    if(method == "POST") return Colors.orange;
    return Colors.red;
  }

  _chldren(BuildContext context) {
    List<Widget> chldren = widget._history.map((e) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            e[0],
            textAlign: TextAlign.right,
            style:TextStyle(
              color:_methodColor(e[0]),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Text(
              e[1],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ],
      )).toList();
    chldren.insert(
      0,
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              child: Text("Clear all", textAlign: TextAlign.right,),
              onTap: () => setState(()=>widget._history.clear()),
            ),
          ),
        ],
      )
    );
    return chldren;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 120,
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children:_chldren(context),
          ),
        ),
      ),
    );
  }
}
