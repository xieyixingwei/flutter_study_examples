import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';
import 'package:provider/provider.dart';


// 1. 首先定义 Notifier
class MyDataModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  
  incrementCounter() {
    _counter++;
    notifyListeners(); // 如果要更新UI，需要手动调用 notifyListeners()通知Provider更新UI
  }
}

class ChangeNotifierProviderExampleA extends ShowPage {
  final String title = "ChangeNotifierProvider Example A";
  final String subtitle = "将ChangeNotifierProvider置于顶层Widget中";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider( // 2. 使用Provider包裹Widget
        create: (_) => MyDataModel(), // 返回要共享的数据Model
        child: ChildWidget(title: 'ChangeNotifierProvider ExampleA'), // 提供 Widget
      ),
    );
  }
}

class ChildWidget extends StatelessWidget { // 3. 将Widget定义成 StatelessWidget
  final String title="ChildWidget";

  ChildWidget({Key key, title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    MyDataModel notifier = Provider.of(context); // 4. 通过Provider 获取 Notifier

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have checked the button this many times:',
            ),
            Text(
              '${context.watch<MyDataModel>().counter}', // 5. 获取 Notifier中的状态
              style: Theme.of(context).textTheme.headline4,
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: notifier.incrementCounter, // 调用Notifier中的方法更新状态(同时更新UI)
              tooltip: 'Increment',
            ),
          ],
        ),
      );
  }
}

// 将ChangeNotifierProvider移动到当前Widget
class ChangeNotifierProviderExampleB extends ShowPage { // 1. 将Widget定义成 StatelessWidget
  final String title = "ChangeNotifierProvider Example B";
  final String subtitle = "将ChangeNotifierProvider置于Widget内部";

  final MyDataModel notifier = MyDataModel(); // 2. 实例化 Notifier

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( // 3. 使用Provider包裹本Widget
          create: (_) => notifier, // 4. 返回要共享的数据Model
          child: Consumer<MyDataModel>( // 5. 使用在Consumer的builder中使用Notifier
            builder: (BuildContext context, MyDataModel localNotifier, Widget child) => Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have checked the button this many times:',
                ),
                Text(
                  '${localNotifier.counter}', // 6. 获取 Notifier中的状态
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: notifier.incrementCounter, // 7. 调用Notifier中的方法更新状态(同时更新UI)
                  tooltip: 'Increment',
                ),
              ],
            ),
          ),
        ),
    );
  }
}
