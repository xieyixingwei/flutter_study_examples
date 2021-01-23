import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:helloworld/routes/Routes.dart';



// 配置Flutter国际化库
// dependencies:
//   flutter_localizations:
//     sdk: flutter
// import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MyApp());
}

var appTheme = ThemeData.light(); // 定义APP的全局主题

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            // home: MyTabs(),                 // 使用initialRoute路由代替
            initialRoute: "/",                 // home 和 initialRoute至少要设置一个
            // routes: {                       // routes 和 onGenerateRoute同时只能设置一个
            //   "/login": (context) => LoginPage(),
            //   "/register": (context) => RegisterPage(),
            // },
            onGenerateRoute: onGenerateRoute,  // 生成器路由(可以实现 命名路由传参)
            debugShowCheckedModeBanner: false, // 去掉debug图标
            theme: appTheme,                   // 设置App的主题
            // 支持国际化配置
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale("zh", "CH"),
              const Locale("en", "US"),
            ],
    );
  }
}
