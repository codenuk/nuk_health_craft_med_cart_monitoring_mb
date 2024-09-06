import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/shared_preferences_helper.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GlobalState extends ChangeNotifier {
  var theme = 'LIGHT';
  var lang = 'EN';

  Future<void> initialSet() async {
    String? themeMode = await SharedPreferencesHelper.getThemeMode();
    theme = themeMode ?? "LIGHT";
    await SharedPreferencesHelper.setThemeMode(themeMode ?? "LIGHT");

    String? langMode = await SharedPreferencesHelper.getLangMode();
    lang = langMode ?? "EN";
    await SharedPreferencesHelper.setLangMode(langMode ?? "EN");
  }

  void changeTheme() async {
    if (theme == 'LIGHT') {
      theme = "DARK";
      await SharedPreferencesHelper.setThemeMode('DARK');
    } else {
      theme = 'LIGHT';
      await SharedPreferencesHelper.setThemeMode('LIGHT');
    }
    notifyListeners();
  }

  void changeLang() async {
    if (lang == 'EN') {
      lang = "TH";
      await SharedPreferencesHelper.setLangMode('TH');
    } else {
      lang = 'EN';
      await SharedPreferencesHelper.setLangMode('EN');
    }
    notifyListeners();
  }

  PackageInfo packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    packageInfo = info;
    notifyListeners();
  }
}
