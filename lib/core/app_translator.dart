import 'package:shared_preferences/shared_preferences.dart';

class AppTranslator {
  AppTranslator._();

  static String currentLanguage = 'en';
  static final Map<String, Map<String, String>> _translations = {
    'en': {
      'hello': 'Hello',
      'Choose': 'Choose Language',
      'login': 'Login',
      'logout': 'Logout',
      'change_language': 'Change Language',
    },
    'bn': {
      'hello': 'হ্যালো',
      'Choose': 'ভাষা নির্বাচন করুন',
      'login': 'লগইন',
      'logout': 'লগআউট',
      'change_language': 'ভাষা পরিবর্তন করুন',
    },
  };

  static String t(String key) {
    return _translations[currentLanguage]?[key] ?? key;
  }

  // Change language & save to SharedPreferences
  static Future<void> changeLanguage(String langCode) async {
    currentLanguage = langCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', langCode);
  }

  // Load language from SharedPreferences
  static Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    currentLanguage = prefs.getString('language_code') ?? 'en';
  }
}
