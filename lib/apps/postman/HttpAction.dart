import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;


class HttpAction {
  final Function(http.Response) _callback;
  Map<String, String> _headers = {};
  List<List> _params = []; // [true/false, "key", "value"]
  String _url = "";
  String response = "";

  HttpAction(Function(http.Response) callback) : _callback = callback;

  String _getParams() {
    List<String> res = [];
    _params.forEach((e) {
      if(e[0] && e[1] != "") {
        res.add(e[1] + "=" + e[2]);
      }
    });
    return res.length == 0 ? "" : "?" + res.join("&");
  }

  Map<String, String> _postData() {
    Map<String, String> res = {};
    _params.forEach((e) {
      if(e[0] && e[1] != "") {
        res[e[1]] = e[2];
      }
    });
    return res;
  }

  _get() async {
    String api = _url + _getParams();
    var res = await http.get(api, headers: _headers);
    //if(res.statusCode == 200) {
    if(_callback != null) _callback(res);
    //} else {
    //  result = "ERROR: " + res.statusCode.toString();
    //}
  }

  _post() async {
    var res = await http.post(
      _url,
      headers: _headers,
      body: _postData(),
      encoding: Utf8Codec()
    );
    if(_callback != null) _callback(res);
    /*
      var client = new http.MultipartRequest("post", Uri.parse(url));
      client.fields["u_name"] = "tom";
      client.fields["u_passwd"] = "123";
      client.send().then((http.StreamedResponse response) {
      if (response.statusCode == 200) {
        response.stream.transform(utf8.decoder).join().then((String string) {
          print(string);
        });
      } else {
        print('error');
      }
      }).catchError((error) {
        print('error');
      });
    */
  }

  _delete() async {
    var res = await http.delete(
      _url,
      headers: _headers,
    );
    if(_callback != null) _callback(res);
  }

  send(String method, String url, String requestHeader, List<List> params) {
    _url = url;
    _params = params;

    if(requestHeader == "x-www-form-urlencoded")
      _headers["content-type"] = "application/x-www-form-urlencoded";
    if(requestHeader == "json")
      _headers["content-type"] = ContentType.json.toString();

    if(method == "GET") _get();
    if(method == "POST") _post();
    if(method == "DELETE") _delete();
  }
}
