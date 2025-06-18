import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  final SharedPreferences _prefs;

  SharedPrefsHelper(this._prefs);

  static const String _isLoggedInKey = 'is_logged_in';
  static const String _userTokenKey = 'user_token';
  static const String _languageKey = 'app_language';
  static const String _themeModeKey = 'app_theme_mode';

  // Example getters & setters
  bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;
  Future<void> setLoggedIn(bool value) => _prefs.setBool(_isLoggedInKey, value);

  String? get userToken => _prefs.getString(_userTokenKey);
  Future<void> setUserToken(String token) => _prefs.setString(_userTokenKey, token);

  String get appLanguage => _prefs.getString(_languageKey) ?? 'en';
  Future<void> setLanguage(String langCode) => _prefs.setString(_languageKey, langCode);

  Future<void> clearAll() async {
    await _prefs.clear();
  }
}
