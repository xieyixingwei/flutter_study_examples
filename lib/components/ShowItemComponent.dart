import 'package:flutter/material.dart';
import 'package:helloworld/components/ImageCard.dart';


class ShowItemComponent extends StatefulWidget {
  String _title;
  List _configs;
  ShowItemComponent({String title, List configs, Key key})
    : _title = title,
      _configs = configs,
      super(key: key);

  @override
  _ShowItemComponent createState() => _ShowItemComponent(title:_title, configs:_configs);
}

class _ShowItemComponent extends State<ShowItemComponent> {
  final String _title;
  final List _configs;
  /*
  [
    {
      "image":"images/2.0x/a.jpg",
      "title":"GridView 布局组件演示",
      "subtitle":"Text 组件演示",
      "route":"/GridView",
    },
  ]; */

  _ShowItemComponent({String title, List configs})
    : _title = title,
      _configs = configs;

  List<Widget> _items(BuildContext context) {
    var items = _configs.map((e) => ImageCard(
      imagesrc: e["image"] != null ? e["image"] : "",
      title: e["title"],
      subtitle: e["subtitle"],
      route: e["route"],
      ));

    return items.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body:Wrap(
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

