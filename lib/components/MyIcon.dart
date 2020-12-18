import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData _icon;
  double _size = 80.0;
  MaterialColor _color = Colors.blue;

  MyIcon(this._icon, {num size, MaterialColor color}) 
    : this._size = size,
      this._color = color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this._size,
      height: this._size,
      color: this._color,
      child: Icon(this._icon, size: 30, color: Colors.white,),
    );
  }
}
