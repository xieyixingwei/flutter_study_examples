import 'package:flutter/material.dart';


class Suffix extends StatelessWidget {
  final Widget _suffix;
  final Widget _child;
  final CrossAxisAlignment _alignment;

  Suffix({Key key, Widget suffix, Widget child, CrossAxisAlignment alignment=CrossAxisAlignment.start})
    : _suffix = suffix,
      _child = child,
      _alignment = alignment,
     super(key:key);

  @override
  Widget build(BuildContext context) {
    return _suffix != null ? Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: _alignment,
              children: [
                _child,
                SizedBox(width: 10,),
                _suffix,
              ],
            ) : _child;
  }
}
