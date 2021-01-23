import 'package:flutter/material.dart';


class Store extends ChangeNotifier {
  List<String> tags = []; // ["现在分词", "过去分词", "完成时", "第三人称单数", "名词形式", "副词形式", "形容词形式"],
  List<String> etyma = []; // 词根词缀 ["dis", "ion", "er", "or", "pre", "un"],
  List<String> morph = []; // 单词变型
  List<String> synonym = []; // 近义词
  List<String> antonym = []; // 反义词
  String origin = ""; // 词源 markdown
  String shorthand = ""; // 速记 markdown
  List<Map> sentencePattern = []; // 常用句型

  _action({List<String> obj, String value, bool action, bool updateUI}) {
    if(action)
      obj.add(value);
    else
      obj.remove(value);
    if (updateUI) {
      notifyListeners(); // 如果要更新UI，需要手动调用 notifyListeners()通知Provider更新UI
    }
  }

  tagsAction({String value, bool action=true, bool updateUI=true}) {
    _action(obj:tags, value:value, action:action, updateUI:updateUI);
  }


  etymaAction({String value, bool action=true, bool updateUI = true}) {
    _action(obj:etyma, value:value, action:action, updateUI:updateUI);
  }

  morphAction({String value, bool action=true, bool updateUI = true}) {
    _action(obj:morph, value:value, action:action, updateUI:updateUI);
  }

  synonymAction({String value, bool action=true, bool updateUI = true}) {
    _action(obj:synonym, value:value, action:action, updateUI:updateUI);
  }

  antonymAction({String value, bool action=true, bool updateUI = true}) {
    _action(obj:antonym, value:value, action:action, updateUI:updateUI);
  }

  originAction({String value, bool updateUI = true}) {
    origin = value;
  }

  shorthandAction({String value, bool updateUI = true}) {
    shorthand = value;
  }

  sentencePatternAction({Map value, bool action=true, bool updateUI = true}) {
    if(action==true){
      sentencePattern.add(value);
    } else {
      sentencePattern.remove(value);
    }
    if (updateUI) {
      notifyListeners(); // 如果要更新UI，需要手动调用 notifyListeners()通知Provider更新UI
    }
  }

  
}
