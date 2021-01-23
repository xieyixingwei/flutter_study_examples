import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import 'package:helloworld/provider/L01_Provider.dart';
import 'package:helloworld/provider/L03_ChangeNotifierProvider.dart';

// 需要在pubspec.yaml中添加:
// dependencies:
//  provider: ^4.3.2+2

/*
Provider其实是对InheritedWidget的封装。相比于直接使用InheritedWidget，使用Provider有很多好处，比如说简化资源的分配与处置，支持懒加载等等。

Provider 为我们提供了一些不同类型的Provider:
    - Provider: 最基础的provider。它携带一个值并将这个值暴露，无论这个值是什么。但是不负责更新UI。
    - ListenableProvider: 为Listenable对象而创建的provider。ListenableProvider会监听对象的变化，
                          只要ListenableProvider的listner被调用，ListenableProvider就会重新构建依赖于该provider的控件。
    - ChangeNotifierProvider: ChangeNotifierProvider是一种特殊的ListenableProvider，它基于ChangeNotifier，
                              并且在有需要的时候，它会自动调用ChangeNotifier.dispose。
    - ValueListenableProvider: 监听ValueListenable并只会暴露ValueListenable.value。
    - StreamProvider: 监听一个Stream 并且对外暴露最新提交的值。
    - FutureProvider: 携带一个 Future，当Future完成时，它会更新依赖于它的控件。

创建一个Proivder:
  - 要使用Provider的create中创建对象:
    Provider(
      create: (_) => MyModel(),
      child: ...
    )
  - 不要使用Provider.value创建对象:
    Provider0.value(
      value: MyModel(),
      child: ...
    )
  - 不要从可以随时间变化而变化的变量中创建对象。(因为在这种情况中，即使引用的变量发生了变化，我们创建的对象也不会被更新):
      int count;
      Provider(
        create: (_) => MyModel(count),
        child: ...
      )
  - 如果想将随时间变化而变化的变量传递到我们的对象中，可以考虑使用 ProxyProvider:
      int count;
      ProxyProvider0(
        update: (_, __) => MyModel(count),
        child: ...
      )
  - 当使用Provider的create/update回调时，我们要注意的是，默认情况下，create/update的调用是懒式调用的。
    这就意味着，只有我们Provider中的数据至少被请求一次，create/update才会被调用。如果我们想做一些预处理，我们可以使用lazy参数来禁止这一特性:
      MyProvider(
        create: (_) => Something(),
        lazy: false,
      )

读取Provider中的数据:
  - 最简单的读取数据的方式是使用BuildContext的扩展方法:
    1. context.watch(): 该方法会使用对应的控件监听T的变化。
    2. context.read(): 该方法直接返回T，并不会监听的变化。
    3. context.select<T, R>(R cb(T value)): 该方法会使对应的控件只监听一小部分T的变，从名字上看我们就知道这是一个筛选器。
    4. 也可以使用静态方法Provider.of<T>(context): 它和watch/read的行为很像，这也是在上面扩展方法出现之前，我们获取数据的方式。
  - 这些方法会从控件树中进行查找，并且是从与传递过来的BuildContext相关的控件开始，最终返会找到并返回与类型T的最近变量（如果未找到，则抛出）。
    值得注意的是，这个操作的复杂度为O(1)。 实际上，这并不会在控件树中游走。
*/

class ProviderPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "Provider Example A",
      "subtitle":"Provider的使用",
      "widget": ProviderExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ChangeNotifierProvider Example A",
      "subtitle":"将ChangeNotifierProvider置于顶层Widget中",
      "widget": ChangeNotifierProviderExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ChangeNotifierProvider Example B",
      "subtitle":"将ChangeNotifierProvider置于Widget内部",
      "widget": ChangeNotifierProviderExampleB(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "ChangeNotifierProvider 的使用", configs:_configs);
  }
}
