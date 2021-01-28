import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

class PopupMenuButtonExampleA extends StatelessWidget with ShowPage {
  final String title = "PopupMenuButton 基本使用";
  final String subtitle = "弹出菜单";

  PopupMenuButtonExampleA({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String> (
              initialValue: '数学', // 初始值(会高亮)
              tooltip: '选择学科', // 长按提示
              elevation: 15, // 设置立体效果的阴影
              padding: EdgeInsets.all(5), // 菜单项的内边距
              offset: Offset(0,100), // 控制菜单弹出的位置()
              color: Colors.grey, // 菜单的背景色
              // child: Text('学科'), // 默认显示的是三个小圆点，也可以更改，注意: child和icon同时只能设置一个
              // icon: Icon(Icons.add), // 默认显示的是三个小圆点，也可以更改图标
              shape: RoundedRectangleBorder( // 设置菜单的边框
                side: BorderSide(  
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10)
              ),

              onSelected: (String val) { // 选中某个值退出的回调函数,
                print(val);
              },
              onCanceled: () { // 没有选中某个值退出的回调函数,
                print("onCanceled");
              },
              itemBuilder: (context) {
                return <PopupMenuEntry<String>> [ // PopupMenuButton的每一项都需要是PopupMenuEntry类型，
                          PopupMenuItem<String>(  // PopupMenuEntry为抽象类，其子类有PopupMenuItem、PopupMenuDivider、CheckedPopupMenuItem。
                            value: '语文',        // value值将会通过onSelected返回
                            enabled: false,        // 控制菜单项是否使能
                            height: 50,           // 控制菜单项的高度
                            textStyle: TextStyle(fontWeight: FontWeight.w600),           // 文本样式
                            child: Text('语文', style:TextStyle(color: Colors.blue) ),  // 子控件
                          ),
                          PopupMenuItem<String>(
                            value: '数学',
                            child: Text('数学'),
                          ),
                          PopupMenuDivider(height: 50,), // 分割线
                          CheckedPopupMenuItem<String>(  // CheckedPopupMenuItem 的前面带有一个是否选中的图标
                            value: '英语',
                            child: Text('英语'),
                          ),
                          CheckedPopupMenuItem<String>(
                            value: '生物',
                            child: Text('生物'),
                          ),
                          PopupMenuItem<String>(
                            value: '化学',
                            child: Text('化学'),
                          ),
                        ];
                },
              );
  }
}

