import 'package:flutter/material.dart';


Map<String, Object> blankSentence() {
  return {
            "tags":[],
            "tense": "",
            "form": [],
            "synonym": [],
            "antonym": [],
            "pattern": ["", ""],
          };
}

class Store extends ChangeNotifier {
  List<bool> onOffWidget = [true, true, true];
  String wordName = "";
  String voiceUS = "";
  String voiceUK = "";
  List<String> tags = ["现在分词", "过去分词", "完成时", "第三人称单数", "名词形式", "副词形式", "形容词形式"];
  List<String> etyma = []; // 词根词缀 ["dis", "ion", "er", "or", "pre", "un"],
  List<String> morph = []; // 单词变型
  List<String> synonym = []; // 近义词
  List<String> antonym = []; // 反义词
  String origin = ""; // 词源 markdown
  String shorthand = ""; // 速记 markdown
  List<Map> sentencePattern = [ // 常用句型
      {
        "type": "It is that ...",
        "sentences": [
          {
            "tags":["日常用语", "商务用语"],
            "tense": "一般现在时",
            "form": ["复合句","问候语","从句","陈述句"],
            "synonym": [1,2],
            "antonym": [3,5],
            "pattern": ["thank you", "谢谢你"],
          }
        ],
      },
      {
        "type": "That's why ...",
        "sentences": [
          {
            "tags":["问候语"],
            "tense": "过去时",
            "form": ["被动语态"],
            "synonym": [1,2],
            "antonym": [3,5],
            "pattern": ["That's why I thank you", "为什么"],
          }
        ],
      },
    ];
  List<Map> wordCollocation = [ // 词汇搭配
      {
        "type": "用作动词(v.)",
        "sentences": [
          {
           "pattern": ["coordinate one's efforts", "齐心协力"],
          },
          {
           "pattern": ["coordinate closely", "紧密配合"],
          }
        ],
      },
    ];
  List<String> partOfSpeechOptions = ["n.", "vt.", "vi.", "v.", "adj."];
  List<Map> partOfSpeech = [ // 词性
      {
        "type": "名词(n.)",
        "items": [
          {
            "type": "同等者， 同等物，同等的人物",
            "sentences": [
              {
                "tags":["问候语"],
                "tense": "过去时",
                "form": ["被动语态"],
                "synonym": [1,2],
                "antonym": [3,5],
                "pattern": ["The filter is defined as a box of coordinates.", "过滤器定义的是一个方框的坐标。"],
              }
            ]
          },
          {
            "type": "同位",
            "sentences": []
          },
        ],
      },
      {
        "type": "动词(v.)",
        "items": [
          {
            "type": "协调，协调一致",
            "sentences": [
              {
                "tags":["问候语"],
                "tense": "过去时",
                "form": ["被动语态"],
                "synonym": [1,2],
                "antonym": [3,5],
                "pattern": ["If we coordinate our efforts we should be able to win the game.", "如果我们同心协力,我们应该能够打赢这场比赛。"],
              },
              {
                "tags":["问候语"],
                "tense": "过去时",
                "form": ["被动语态"],
                "synonym": [1,2],
                "antonym": [3,5],
                "pattern": ["You must coordinate the movements of your arms and legs when swimming.", "游泳时你必须使臂和腿的动作相协调。"],
              },
            ]
          },
        ],
      },
    ]; 
  updateUI(){
    notifyListeners();
  }
}
