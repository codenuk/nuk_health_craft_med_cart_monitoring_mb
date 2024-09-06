import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static Future<String?> getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('THEME');
  }

  static Future<bool> setThemeMode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("THEME", value);
  }

  static Future<String?> getLangMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('LANG');
  }

  static Future<bool> setLangMode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("LANG", value);
  }
}
