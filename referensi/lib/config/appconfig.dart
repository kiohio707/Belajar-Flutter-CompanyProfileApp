import 'package:http/http.dart' as http;

class Config {
  var _baseUrl = 'http://192.168.43.104/UTS-PEMWEB/public/api/';

  httpGetHome(String api) async {
    return await http.get(
      Uri.parse(_baseUrl + api),
      headers: {"Accept": "application/json"},
    );
  }

  httpGetProfil(String api) async {
    return await http.get(
      Uri.parse(_baseUrl + api),
      headers: {"Accept": "application/json"},
    );
  }

  httpGetGallery(String api) async {
    return await http.get(
      Uri.parse(_baseUrl + api),
      headers: {"Accept": "application/json"},
    );
  }

  httpGetAbout(String api) async {
    return await http.get(
      Uri.parse(_baseUrl + api),
      headers: {"Accept": "application/json"},
    );
  }
}
