import 'package:flutter/material.dart';


class Prefix extends StatelessWidget {
  final Widget _prefix;
  final Widget _child;
  final CrossAxisAlignment _alignment;
  final EdgeInsetsGeometry _padding;

  Prefix({Key key, Widget prefix, Widget child, CrossAxisAlignment alignment=CrossAxisAlignment.start, EdgeInsetsGeometry padding})
    : _prefix = prefix,
      _child = child,
      _alignment = alignment,
      _padding = padding,
     super(key:key);

  @override
  Widget build(BuildContext context) {
    return _prefix != null ? Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: _alignment,
              children: [
                Padding(
                  padding: _padding != null ? _padding : EdgeInsets.zero,
                  child: _prefix,
                ),
                SizedBox(width: 10,),
                _child,
              ],
            ) : _child;
  }
}
