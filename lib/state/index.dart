import 'package:flutter/material.dart';
import 'package:health_craft_med_cart_monitoring_mb/state/shared_preferences_helper.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GlobalState extends ChangeNotifier {
  String theme = 'LIGHT';
  String lang = 'EN';
  String? accessToken = null;
  String? refreshToken = null;
  DecoedToken? decodeToken = null;

  PackageInfo packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  Future<void> initialSet() async {
    String? themeMode = await SharedPreferencesHelper.getThemeMode();
    theme = themeMode ?? "LIGHT";
    await SharedPreferencesHelper.setThemeMode(themeMode ?? "LIGHT");

    String? langMode = await SharedPreferencesHelper.getLangMode();
    lang = langMode ?? "EN";
    await SharedPreferencesHelper.setLangMode(langMode ?? "EN");

    String? accessTokenLocal = await SharedPreferencesHelper.getAccessToken();
    String? refreshTokenLocal = await SharedPreferencesHelper.getRefreshToken();
    accessToken = accessTokenLocal;
    refreshToken = refreshTokenLocal;

    final info = await PackageInfo.fromPlatform();
    packageInfo = info;
    notifyListeners();
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

  void setCredential(String newAccessToken, String newRefreshToken) async {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(newAccessToken);
    // Create a User object from the decoded token
    DecoedToken decoedToken = DecoedToken.fromJson(decodedToken);

    decodeToken = decoedToken;
    accessToken = newAccessToken;
    refreshToken = newRefreshToken;
    await SharedPreferencesHelper.setAccessToken(newAccessToken);
    await SharedPreferencesHelper.setRefreshToken(newRefreshToken);
    notifyListeners();
  }

  Future<void> clearCredential() async {
    accessToken = null;
    refreshToken = null;
    await SharedPreferencesHelper.removeAccessToken();
    await SharedPreferencesHelper.removeRefreshToken();
    notifyListeners();
  }
}

class DecoedToken {
  final String userID;
  final String username;
  final String fullname;
  final String userRoleID;
  final List<String> permission;
  final String hospitalID;
  final String imageURL;
  final String typeTokenAuth;
  final int iat;
  final int exp;

  DecoedToken({
    required this.userID,
    required this.username,
    required this.fullname,
    required this.userRoleID,
    required this.permission,
    required this.hospitalID,
    required this.imageURL,
    required this.typeTokenAuth,
    required this.iat,
    required this.exp,
  });

  // Factory constructor to parse from JSON
  factory DecoedToken.fromJson(Map<String, dynamic> json) {
    return DecoedToken(
      userID: json['userID'],
      username: json['username'],
      fullname: json['fullname'],
      userRoleID: json['userRoleID'],
      permission: List<String>.from(json['permission']),
      hospitalID: json['hospitalID'],
      imageURL: json['imageURL'],
      typeTokenAuth: json['typeTokenAuth'],
      iat: json['iat'],
      exp: json['exp'],
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'username': username,
      'fullname': fullname,
      'userRoleID': userRoleID,
      'permission': permission,
      'hospitalID': hospitalID,
      'imageURL': imageURL,
      'typeTokenAuth': typeTokenAuth,
      'iat': iat,
      'exp': exp,
    };
  }
}
