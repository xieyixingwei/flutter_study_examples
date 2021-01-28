import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_http.dart';
import './L02_dio.dart';
import './L03_HttpClient.dart';

class HttpPage extends ShowPage {
  final String title = "http网络请求";

  final List<ShowPage> items = [
    HttpExampleA(),
    DioExampleA(),
    HttpClientExampleA(),
  ];
}
