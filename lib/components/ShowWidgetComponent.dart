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
      appBar: AppBar(title: Text(this._title)),
      body: this._widget
    );
  }
}


class ShowWidgetComponent extends StatelessWidget {
  final String _title;
  final List _configs;/* = [
    {
      "image":"lib/widgets/Text/images/Text.PNG",
      "title":"Text 组件",
      "subtitle":"文本显示和样式。",
      "widget":Widget(),
    },
  ];*/
  ShowWidgetComponent({String title, List configs, Key key})
    : this._title = title,
      this._configs = configs,
      super(key: key);

  List<Widget> _items(context) {
    var items = this._configs.map((e) => ImageCard(
           imagesrc: e["image"] != null ? e["image"] : "",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._title)),
      body: Wrap(
        //direction: Axis.horizontal,
        spacing: 10,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.start,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: _items(context),
      ),
    );
  }
}
