import 'package:uas_pemweb/config/appconfig.dart';

class Service {
  late Config _config;

  Service() {
    _config = Config();
  }

  getAllHome() async {
    return await _config.httpGetHome('get-home');
  }

  getAllProfil() async {
    return await _config.httpGetProfil('get-profil');
  }

  getAllGallery() async {
    return await _config.httpGetGallery('get-gallery');
  }

  getAllAbout() async {
    return await _config.httpGetAbout('get-about');
  }
}
