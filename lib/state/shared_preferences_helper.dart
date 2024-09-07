import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  // Theme
  static Future<String?> getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('THEME');
  }

  static Future<bool> setThemeMode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("THEME", value);
  }

  // Lang
  static Future<String?> getLangMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('LANG');
  }

  static Future<bool> setLangMode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("LANG", value);
  }

  // Credential
  static Future<String?> getAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('ACCESS_TOKEN');
  }

  static Future<String?> getRefreshToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('REFRESH_TOKEN');
  }

  static Future<bool> setAccessToken(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("ACCESS_TOKEN", accessToken);
  }

  static Future<bool> setRefreshToken(String refreshToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("REFRESH_TOKEN", refreshToken);
  }

  static Future<bool> removeAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("ACCESS_TOKEN");
  }

  static Future<bool> removeRefreshToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("REFRESH_TOKEN");
  }
}
