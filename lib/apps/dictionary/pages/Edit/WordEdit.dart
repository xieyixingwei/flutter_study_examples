import 'package:flutter/material.dart';
import 'package:helloworld/apps/dictionary/pages/Edit/ItemsEdit.dart';
import 'package:helloworld/apps/dictionary/pages/Edit/PartOfSpeechEdit.dart';
import 'package:helloworld/common/InputTag.dart';
import 'package:helloworld/common/OnOffWidget.dart';
import 'package:helloworld/common/SelectTag.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/apps/dictionary/store/store.dart';


class WordEdit extends StatelessWidget {

  final List<Widget> children = [
    WordNameEdit(),
    WordDetailEdit(),
    PartOfSpeechEdit(),
    WordRelativeEdit(),
  ];

  WordEdit({Key key, BuildContext context}) : super(key: key);

  _children(BuildContext context) {
    var list = children.map((Widget item)=>Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: item,
                ),).toList();

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _children(context),
            );
  }
}


class WordNameEdit extends StatelessWidget {

  WordNameEdit({Key key}): super(key: key);

  _wordNameTextField(BuildContext context) => TextField(
                maxLines: 1,
                style: TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: "单词",
                  suffixIcon: InkWell(
                    child: Icon(Icons.search,),
                    onTap: () { print("--- 搜索单词 ${Provider.of<Store>(context, listen:false).wordName}"); },
                  ),
                ),
                onChanged: (String value) => Provider.of<Store>(context, listen:false).wordName = value
              );

  _textField(BuildContext context, String hintText, Function(String) onChanged) => TextField(
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
            ),
            decoration: InputDecoration(
              hintText: hintText,
            ),
            onChanged: onChanged,
          );

  @override
  Widget build(BuildContext context) {

    return Row(
              children: [
                Expanded(flex: 10, child: _wordNameTextField(context),),
                Expanded(flex: 1, child: Container(width:0, height:0),),
                Expanded(
                  flex: 5,
                  child: _textField(
                                    context,
                                    "音标(美)",
                                    (String value)=>(value)=>Provider.of<Store>(context, listen:false).voiceUS=value),),
                Expanded(flex:1, child: Container(width:0, height:0),),
                Expanded(
                  flex: 5,
                  child: _textField(
                                    context,
                                    "音标(英)",
                                    (String value)=>(value)=>Provider.of<Store>(context, listen:false).voiceUK=value),),
              ],
            );
  }
}


class WordDetailEdit extends StatelessWidget {

  WordDetailEdit({Key key}): super(key: key);

  _padding(Widget child) => Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: child,
                            );

  @override
  Widget build(BuildContext context) {
    return OnOffWidget(
            label: "详情",
            hide: Provider.of<Store>(context, listen:true).onOffWidget[0],
            click: (bool status){ Provider.of<Store>(context, listen:false).onOffWidget[0]=!status; Provider.of<Store>(context, listen:false).updateUI();},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _padding(
                  SelectTag(
                    data: Provider.of<Store>(context, listen:true).tags,
                    options: ["现在分词", "过去分词", "完成时", "第三人称单数", "名词形式", "副词形式", "形容词形式"],
                    tooltip: "添加Tag",
                    lable: "Tag:",
                    icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                    add: (String value) { Provider.of<Store>(context, listen:false).tags.add(value); Provider.of<Store>(context, listen:false).updateUI();},
                    delete: (String value) { Provider.of<Store>(context, listen:false).tags.remove(value); Provider.of<Store>(context, listen:false).updateUI();},
                  )
                ),
                _padding(
                  InputTag(
                    data: Provider.of<Store>(context, listen:true).etyma,
                    tooltip: "输入词根词缀",
                    lable: "词根词缀:",
                    icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                    add: (String value) { Provider.of<Store>(context, listen:false).etyma.add(value); Provider.of<Store>(context, listen:false).updateUI();},
                    delete: (String value) { Provider.of<Store>(context, listen:false).etyma.remove(value); Provider.of<Store>(context, listen:false).updateUI();},
                  )
                ),
                _padding(
                  InputTag(
                    data: Provider.of<Store>(context, listen:true).morph,
                    tooltip: "输入变型单词",
                    lable: "变型单词:",
                    icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                    add: (String value) { Provider.of<Store>(context, listen:false).morph.add(value); Provider.of<Store>(context, listen:false).updateUI();},
                    delete: (String value) { Provider.of<Store>(context, listen:false).morph.remove(value); Provider.of<Store>(context, listen:false).updateUI();},
                  )
                ),
                _padding(
                  TextField(
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: "词源",
                      hintText: "输入词源(markdown)",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      Provider.of<Store>(context, listen:false).origin = value;
                    },
                  )
                ),
                _padding(
                  TextField(
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: "速记",
                      hintText: "输入速记(markdown)",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      Provider.of<Store>(context, listen:false).shorthand = value;
                    },
                  )
                ),
              ],
            ),
          );
  }
}


class WordRelativeEdit extends StatelessWidget {

  WordRelativeEdit({Key key}): super(key: key);

  _padding(Widget child) => Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: child,
                            );

  @override
  Widget build(BuildContext context) {
    return OnOffWidget(
            label: "相关",
            hide: Provider.of<Store>(context, listen:true).onOffWidget[1],
            click: (bool status){ Provider.of<Store>(context, listen:false).onOffWidget[1]=!status; Provider.of<Store>(context, listen:false).updateUI();},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _padding(
                  ItemsEdit(
                    label: "常用句型",
                    data: Provider.of<Store>(context, listen:true).sentencePattern,
                  ),
                ),
                _padding(
                  ItemsEdit(
                    label: "词汇搭配",
                    data: Provider.of<Store>(context, listen:true).wordCollocation,
                    options: Provider.of<Store>(context, listen:true).partOfSpeechOptions,
                  )
                ),
                _padding(
                  InputTag(
                    data: Provider.of<Store>(context, listen:true).synonym,
                    tooltip: "输入近义词",
                    lable: "近义词:",
                    icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                    add: (String value) { if(value.length == 0) return; Provider.of<Store>(context, listen:false).synonym.add(value); Provider.of<Store>(context, listen:false).updateUI();},
                    delete: (String value) { Provider.of<Store>(context, listen:false).synonym.remove(value); Provider.of<Store>(context, listen:false).updateUI();},
                  )
                ),
                _padding(
                  InputTag(
                    data: Provider.of<Store>(context, listen:true).antonym,
                    tooltip: "输入反义词",
                    lable: "反义词:",
                    icon: Icon(Icons.add, color:Color.fromRGBO(158,158,158,1)),
                    add: (String value) { if(value.length == 0) return; Provider.of<Store>(context, listen:false).antonym.add(value); Provider.of<Store>(context, listen:false).updateUI();},
                    delete: (String value) { Provider.of<Store>(context, listen:false).antonym.remove(value); Provider.of<Store>(context, listen:false).updateUI();},
                  )
                ),
              ],  
            ),
    );
  }
}

