import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences get instance => _prefs;

  static Future<void> saveUid(String uid) async {
    await _prefs.setString('uid', uid);//i am trying to save my userid with the key 'uid'
  }

  static String getUid() {
    return _prefs.getString('uid') ?? '';
  }
}
