import 'package:shared_preferences/shared_preferences.dart';

class AppTranslator {
  AppTranslator._();

  static String currentLanguage = 'en';

  static final Map<String, Map<String, String>> _translations = {
    'en': {
      'hello': 'Smart Shopping',
      'Choose': 'Shop smarter, save time, and discover the best deals.',
      'login': 'Login',
      'logout': 'Logout',
      'change_language': 'Change Language',
    },
    'bn': {
      'hello': 'স্মার্ট শপিং',
      'Choose': 'বুদ্ধিমানের মতো কেনাকাটা করুন, সময় বাঁচান, এবং সেরা ডিলগুলো আবিষ্কার করুন।',
      'login': 'লগইন',
      'logout': 'লগআউট',
      'change_language': 'ভাষা পরিবর্তন করুন',
    },
  };

  static String t(String key) {
    return _translations[currentLanguage]?[key] ?? key;
  }

  static Future<void> changeLanguage(String langCode) async {
    currentLanguage = langCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', langCode);
  }

  static Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    currentLanguage = prefs.getString('language_code') ?? 'en';
  }
}
