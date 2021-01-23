import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// 1. 首先定义 Share Data Model
class MyDataModel {
  int _counter = 0;
  int get counter => _counter;
  
  incrementCounter() {
    _counter++;
    print("--- MyDataModel.incrementCounter");
  }
}


class CounterLabel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            child: Text("获取counter"),
            onPressed: (){
                var counter = Provider.of<MyDataModel>(context, listen:false).counter; // 子Widget可以访问Data Model
                print(counter);
              },
            );
  }
}


class CounterButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: Provider.of<MyDataModel>(context).incrementCounter, // 子Widget可以访问Data Model
      child: const Icon(Icons.add),
    );
  }
}


class ChildWidget extends StatelessWidget { // 3. 将Widget定义成 StatelessWidget

  ChildWidget({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CounterLabel(),
            SizedBox(height: 20,),
            CounterButton(),
          ],
        );
  }
}


class ProviderExampleA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Provider<MyDataModel>( // 2. 使用Provider包裹Widget
        create: (_) => MyDataModel(), // 返回要共享的数据Model
        child: ChildWidget(), // 提供子 Widget
      ),
    );
  }
}
