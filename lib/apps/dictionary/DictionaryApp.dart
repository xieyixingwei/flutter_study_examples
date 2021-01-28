import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/pages/Edit/page.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'package:provider/provider.dart';
import './home/TabHome.dart';
import './TabPractice.dart';
import './TabDiscover.dart';
import './TabProfile.dart';


class DictionaryApp extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "英语词典APP";
  final String subtitle = "查词、学习";

  final index;
  DictionaryApp({Key key, this.index=0}) : super(key: key);

  @override
  _DictionaryApp createState() => _DictionaryApp(index: this.index);
}

class _DictionaryApp extends State<DictionaryApp> {
  int _currentIndex = 0;
  List<Widget> _tabs = [
    //TabHome(),
    EditPage(),
    TabPractice(),
    TabDiscover(),
    TabProfile(),
  ];

  _DictionaryApp({int index}) : this._currentIndex = index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.toString());
    return ChangeNotifierProvider( // 2. 使用Provider包裹Widget
        create: (_) => Store(), // 返回要共享的数据Model
        child: Scaffold(
          body: this._tabs[this._currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            iconSize: 24,
            elevation: 50,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              print(index);
              setState(() {
                this._currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), //(Icons.home, color:Colors.grey,),
                //activeIcon: Icon(Icons.home, color:Colors.blue,),
                title: Text("首页"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.import_contacts),

                title: Text("练习"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.remove_red_eye),
                title: Text("发现"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("我的"),
              ),
            ],
          ),
        ),
    );
  }
}
