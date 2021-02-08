import 'package:flutter/cupertino.dart';
import 'package:helloworld/apps/github/common/Global.dart';
import 'package:helloworld/apps/github/models/index.dart';


class ProfileChangeNotifier extends ChangeNotifier {
  Profile get profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知依赖的Widget更新
  }
}
