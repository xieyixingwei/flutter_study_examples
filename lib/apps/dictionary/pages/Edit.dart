import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/components/InputAdder.dart';
import 'package:helloworld/apps/dictionary/components/PartOfSpeech.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Row(
          children: [
            LineEdit(
              data:Provider.of<Store>(context, listen:true).wordName,
              hintText:"单词",
              flex:2,
              onChanged: (value) => Provider.of<Store>(context, listen:false).wordName = value
              ),
            SizedBox(width: 20,),
            LineEdit(
              data:Provider.of<Store>(context, listen:true).voiceUS,
              hintText:"音标(美)", flex:1,
              onChanged: (value)=>Provider.of<Store>(context, listen:false).voiceUS=value,
              ),
            SizedBox(width: 20,),
            LineEdit(
              data:Provider.of<Store>(context, listen:true).voiceUK,
              hintText:"音标(英)", flex:1,
              onChanged: (value)=>Provider.of<Store>(context, listen:false).voiceUK=value,
              ),
          ],
        ),
        SizedBox(height: 15,),
        TagAdder(
          data: Provider.of<Store>(context, listen:true).tags,
          options: ["情态动词", "Be动词", "感官动词"],
          label: "Tags:",
          title: "添加Tag",
        ),

        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加词根词缀:",
          data: Provider.of<Store>(context, listen:true).etyma,
          ),
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加变型单词:",
          data: Provider.of<Store>(context, listen:true).morph,
          ),

        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加近义词:",
          data: Provider.of<Store>(context, listen:true).synonym,
          ), 
        SizedBox(height: 15,),
        LineEditAdder(
          label: "添加反义词:",
          data: Provider.of<Store>(context, listen:true).antonym,
          ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("词源(markdown):"),
            SizedBox(width: 10,),
            TextEdit(
              data: Provider.of<Store>(context, listen:true).origin,
              onChanged: (value)=>Provider.of<Store>(context, listen:false).origin = value,
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
              data: Provider.of<Store>(context, listen:true).shorthand,
              onChanged: (value)=>Provider.of<Store>(context, listen:false).shorthand = value,
            )
          ],
        ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("词性:"),
            SizedBox(width: 10,),
            PartOfSpeech(
              data: Provider.of<Store>(context, listen:true).partOfSpeech,
              options: Provider.of<Store>(context, listen:false).partOfSpeechOptions,
            ),
          ],
        ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("常用句型:"),
            SizedBox(width: 10,),
            InputAdder(
              data: Provider.of<Store>(context, listen:true).sentencePattern,
            ),
          ],
        ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("词汇搭配:"),
            SizedBox(width: 10,),
            InputAdder(
              data: Provider.of<Store>(context, listen:true).wordCollocation,
              options: Provider.of<Store>(context, listen:false).partOfSpeechOptions,
            ),
          ],
        ),
        
      ],
    );
  }
}
