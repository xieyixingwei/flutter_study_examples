import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/SentenceAdder.dart';
import 'package:helloworld/apps/dictionary/components/TextEdit.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';
import 'package:helloworld/apps/dictionary/components/LineEditAdder.dart';
import 'package:helloworld/apps/dictionary/components/TagAdder.dart';
import 'package:helloworld/apps/dictionary/components/LineEdit.dart';


class EditPage extends StatefulWidget {

  EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  Map values = {
    "type": "It is that ...",
    "sentences": [
      ["thank you", "谢谢你"],
      ["fuck you", "爬远点"],
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Row(
          children: [
            LineEdit(hintText:"单词", flex:2),
            SizedBox(width: 20,),
            LineEdit(hintText:"音标(美)", flex:1),
            SizedBox(width: 20,),
            LineEdit(hintText:"音标(英)", flex:1),
          ],
        ),
        SizedBox(height: 15,),
        TagAdder(
          label: "Tags:",
          title: "添加Tag",
          options: ["情态动词", "Be动词", "感官动词"],
          values: Provider.of<Store>(context, listen:true).tags,
          enterPressed: (value)=>Provider.of<Store>(context, listen:false).tagsAction(value: value),
          delete: (Object obj, String value) =>Provider.of<Store>(context, listen:false).tagsAction(value:value, action:false),
        ),
        /*
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加词根词缀:",
          values: Provider.of<Store>(context, listen:true).etyma,
          enterPressed: (value)=>Provider.of<Store>(context, listen:false).etymaAction(value: value),
          delete: (Object obj, String value) =>Provider.of<Store>(context, listen:false).etymaAction(value:value, action:false),
          ),
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加变型单词:",
          values: Provider.of<Store>(context, listen:true).morph,
          enterPressed: (value)=>Provider.of<Store>(context, listen:false).morphAction(value: value),
          delete: (Object obj, String value) =>Provider.of<Store>(context, listen:false).morphAction(value:value, action:false),
          ),
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加近义词:",
          values: Provider.of<Store>(context, listen:true).synonym,
          enterPressed: (value)=>Provider.of<Store>(context, listen:false).synonymAction(value: value),
          delete: (Object obj, String value) =>Provider.of<Store>(context, listen:false).synonymAction(value:value, action:false),
          ), 
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加反义词:",
          values: Provider.of<Store>(context, listen:true).antonym,
          enterPressed: (value)=>Provider.of<Store>(context, listen:false).antonymAction(value: value),
          delete: (Object obj, String value) =>Provider.of<Store>(context, listen:false).antonymAction(value:value, action:false),
          ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("词源(markdown):"),
            SizedBox(width: 10,),
            TextEdit(
              init: Provider.of<Store>(context, listen:true).origin,
              enterPressed: (value)=>Provider.of<Store>(context, listen:false).originAction(value: value),
            )
          ],
        ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("速记(markdown):"),
            SizedBox(width: 10,),
            TextEdit(
              init: Provider.of<Store>(context, listen:true).shorthand,
              enterPressed: (value)=>Provider.of<Store>(context, listen:false).shorthandAction(value: value),
            )
          ],
        ),*/
        SizedBox(height: 40,),
        SentenceAdder(values: values,),
      ],
    );
  }
}
