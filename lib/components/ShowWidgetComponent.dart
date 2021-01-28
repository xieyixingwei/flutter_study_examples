import 'package:flutter/material.dart';
import 'package:helloworld/components/ImageCard.dart';


class _ShowWidgetComponent extends StatelessWidget {
  final String _title;
  final Widget _widget;
  const _ShowWidgetComponent({String title, Widget widget, Key key})
    : this._title = title,
      this._widget = widget,
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._widget
    );
  }
}


class ShowWidgetComponent extends StatelessWidget {
  final String _title;
  final List<Map> _configs;/* = [
    {
      "image":"lib/widgets/Text/images/Text.PNG",
      "title":"Text 组件",
      "subtitle":"文本显示和样式。",
      "widget":Widget(),
    },
  ];*/
  ShowWidgetComponent({Key key, String title, List<Map> configs})
    : this._title = title,
      this._configs = configs,
      super(key: key);

  List<Widget> _items(context) {
    var items = this._configs.map((e) => ImageCard(
           image: e["image"],
           title: e["title"],
           subtitle: e["subtitle"],
           onpress: () {
             Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return _ShowWidgetComponent(title:e["title"], widget:e["widget"]);
                      },
                    )
                  );
           },
         ));
      return items.toList();
  }

  _wrap(List<Widget> children) =>
    Wrap(
      //direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: children,
    );

  _singleChildScrollView(Widget child) =>
    SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 120,
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(30,10,30,10),
          padding: EdgeInsets.all(0),
          child: child,
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._title)),
      body: _singleChildScrollView(
        _wrap(
          _items(context)
        )
      ),
    );
  }
}

abstract class ShowPage {
  final bool isStateless = true;
  final String image = null;
  final String title = null;
  final String subtitle = null;
  final String document = null;
  final List<ShowPage> items = null;

  List<Widget> _items(context) {
    var it = items.map((e) => ImageCard(
           image: e.image ?? "images/fluter.PNG",
           title: e.title ?? "",
           subtitle: e.subtitle ?? "",
           onpress: () {
             Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return e.items != null ? e.build(context) : Scaffold(
                                                  appBar: AppBar(title: Text(title??"")),
                                                  body: e.isStateless ? e.build(context) : e
                                                );
                      },
                    )
                  );
           },
         ));
      return it.toList();
  }

  _wrap(List<Widget> children) =>
    Wrap(
      //direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: children,
    );

  _singleChildScrollView(Widget child) =>
    SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 120,
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(30,10,30,10),
          padding: EdgeInsets.all(0),
          child: child,
        ),
      ),
    );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title??"")),
      body: _singleChildScrollView(
        _wrap(
          _items(context)
        )
      ),
    );
  }
}
