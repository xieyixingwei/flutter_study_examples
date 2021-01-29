import 'package:flutter/material.dart';
import 'package:helloworld/components/ImageCard.dart';


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
