import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  final List<String> _options;
  final String _selected;
  final String _tooltip;
  final Function(String) _close;

  PopupMenu({Key key, List<String> options, String selected, String tooltip, Function(String) close})
    : _options = options,
      _selected = selected,
      _tooltip = tooltip,
      _close = close,
      super(key:key);

  _menuItems() => _options.map(
    (String option) => PopupMenuItem<String>(
                            value: option,  
                            textStyle: TextStyle(fontWeight: FontWeight.w600),           // 文本样式
                            child: Text(option, style:TextStyle(color: Colors.blue) ),  // 子控件
                          )
  ).toList();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String> (
              initialValue: _selected,
              tooltip: _tooltip, // 长按提示
              elevation: 15, // 设置立体效果的阴影
              padding: EdgeInsets.all(5), // 菜单项的内边距
              offset: Offset(0,0), // 控制菜单弹出的位置()
              color: Colors.grey, // 菜单的背景色
              child: Text(_selected), // 默认显示的是三个小圆点，也可以更改，注意: child和icon同时只能设置一个
              // icon: Icon(Icons.add), // 默认显示的是三个小圆点，也可以更改图标
              shape: RoundedRectangleBorder( // 设置菜单的边框
                side: BorderSide(  
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              onSelected: (String val) { // 选中某个值退出的回调函数,
                _close(val);
              },
              //onCanceled: () { // 没有选中某个值退出的回调函数,
              //  print("onCanceled");
              //},
              itemBuilder: (context) {
                return _menuItems();
                },
              );
  }
}

