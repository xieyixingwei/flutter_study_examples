import 'package:flutter/material.dart';


/// Flutter右以下几种按钮组件
/// RaisedButton 凸起的按钮，是Material Design风格的Button
/// FlatButton 扁平化的按钮
/// OutlineButton 线框按钮
/// IconButton 图标按钮
/// ButtonBar 按钮组
/// FloatingActionButton 浮动按钮


class RaisedButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            child: Text("RaisedButton"),
            color: Colors.red,
            textColor: Colors.white,
            elevation: 10, //阴影
            splashColor: Colors.white, //按下的颜色
            shape: RoundedRectangleBorder( // 设置按钮的圆角
              borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
            },
          );
  }
}


class RaisedButtonB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
              child: Text("圆形按钮"),
              shape: CircleBorder( // 设置按钮的圆角
                side: BorderSide(
                  color: Colors.white,
                )
              ),
              onPressed: () {
              },
            );
  }
}


class RaisedButtonC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
            icon: Icon(Icons.search),
            label: Text("带按钮的图标"),
            onPressed: () {
            },
          );
  }
}


class RaisedButtonD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80,
            width: 300,
            child: RaisedButton(
              child: Text("通过Container可以设置Button的大小"),
              onPressed: null, // 禁用按钮
            ),
          );
  }
}


class RaisedButtonE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: Container(
                  height: 80, // 可以设置高度
                  width: 300, // 设置宽度没用
                  child: RaisedButton(
                    child: Text("自适应Button"),
                    onPressed: () {
                    },
                  ),
                ),
              ),
            ],
          );
  }
}


class FlatButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
            child: Text("FlatButton"),
            onPressed: () {
              
            },
          );
  }
}


class OutlineButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
            child: Text("OutlineButton"),
            color: Colors.red, // 不能设置OutlineButton的背景色
            textColor: Colors.green,
            onPressed: () {
              
            },
          );
  }
}


class IconButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(Icons.sanitizer,),
            onPressed: () {
              
            },
          );
  }
}


class ButtonBarA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("ButtonBar 1"),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("ButtonBar 2"),
                onPressed: () {
                  
                },
              )
            ],
          );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button组件演示"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("RaisedButton"),
            color: Colors.red,
            textColor: Colors.white,
            elevation: 10, //阴影
            splashColor: Colors.white, //按下的颜色
            shape: RoundedRectangleBorder( // 设置按钮的圆角
              borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
            },
          ),
          SizedBox(height: 10,),
          Container(
            height: 80,
            child: RaisedButton(
              child: Text("圆形按钮"),
              shape: CircleBorder( // 设置按钮的圆角
                side: BorderSide(
                  color: Colors.white,
                )
              ),
              onPressed: () {
              },
            ),
          ),
          SizedBox(height: 10,),
          RaisedButton.icon(
            icon: Icon(Icons.search),
            label: Text("带按钮的图标"),
            onPressed: () {
              
            },
          ),
          SizedBox(height: 10,),
          Container(
            height: 80,
            width: 300,
            child: RaisedButton(
              child: Text("通过Container可以设置Button的大小"),
              onPressed: null, // 禁用按钮
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80, // 可以设置高度
                  width: 300, // 设置宽度没用
                  child: RaisedButton(
                    child: Text("自适应Button"),
                    onPressed: () {
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () {
              
            },
          ),
          SizedBox(height: 10,),
          OutlineButton(
            child: Text("OutlineButton"),
            color: Colors.red, // 不能设置OutlineButton的背景色
            textColor: Colors.green,
            onPressed: () {
              
            },
          ),
          SizedBox(height: 20,),
          IconButton(
            icon: Icon(Icons.sanitizer,),
            onPressed: () {
              
            },
          ),
          SizedBox(height: 20,),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("ButtonBar 1"),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("ButtonBar 2"),
                onPressed: () {
                  
                },
              )
            ],
          ),
        ],
      ),
    
    floatingActionButton: FloatingActionButton(
            child: Text("FloatingActionButton"),
            onPressed: () {
            },
          ),
    // 设置浮动按钮的位置
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
