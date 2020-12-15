import 'package:flutter/material.dart';

import 'package:helloworld/tabs/HomePage.dart';
import 'package:helloworld/tabs/CategoryPage.dart';
import 'package:helloworld/tabs/SettingsPage.dart';

class MyTabs extends StatefulWidget {
  final index;
  MyTabs({Key key, this.index=0}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState(index: this.index);
}

class _MyTabsState extends State<MyTabs> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
  ];

  _MyTabsState({int index}) : this._currentIndex = index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(title: Text("Flutter Demo")),
              body: this._pages[this._currentIndex],
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white
                ),
                child: FloatingActionButton(
                  child: Icon(Icons.add, size: 40,),
                  backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.yellow,
                  onPressed: () {
                    setState(() {
                      this._currentIndex = 1;
                    });
                  },
                ),
              ),
              drawer: Drawer(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                              //color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage("images/c.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                            child: Text("左侧侧边抽屉栏"),
                          ),
                        )
                      ],
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.people),
                      ),
                      title: Text("用户"),
                      onTap: () {
                        // 首先隐藏侧边栏
                        Navigator.of(context).pop();
                        // 然后跳转到User page
                        Navigator.pushNamed(context, "/user");
                      },
                    ),
                    Divider(), // 分隔线
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.settings),
                      ),
                      title: Text("设置"),
                    )
                  ],
                ),
              ),
              endDrawer: Drawer(
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("images/b.jpg"),
                      ),
                      accountName: Text("右侧侧边抽屉栏"),
                      accountEmail: Text("234234@gmail.com"),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/c.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                      otherAccountsPictures: [
                        Image.asset("images/3.0x/a.jpg"),
                        Image.asset("images/4.0x/a.jpg"),
                      ],
                    )
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: this._currentIndex,
                iconSize: 20,
                onTap: (int index) {
                  print(index);
                  setState(() {
                    this._currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("首页"),
                  ),
                  //BottomNavigationBarItem(
                  //  icon: Icon(Icons.home),
                  //  title: Text("AppBar"),
                  //),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.category),
                    title: Text("分类", style: TextStyle( fontSize: 12),),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text("设置"),
                  ),
                ],
              ),
    );
  }
}
