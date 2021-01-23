import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/SearchInput.dart';
import 'package:helloworld/apps/dictionary/pages/Edit.dart';


class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      // padding: EdgeInsets.all(5),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          child:SearchInput(),
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
        ),
        EditPage(),
      ],
    );
  }
}
