import 'package:get/get.dart';
import '../../../core/app_translator.dart';

class LanguageController extends GetxController {
  var selectedLanguageCode = ''.obs;

  final languages = [
    {'name': 'English', 'code': 'en'},
    {'name': 'বাংলা', 'code': 'bn'},
  ];

  void selectLanguage(String code) async {
    selectedLanguageCode.value = code;
    await AppTranslator.changeLanguage(code); // ✅ ভাষা পরিবর্তন সেভ করো
  }

  String getSelectedLanguageName() {
    final lang = languages.firstWhere(
          (l) => l['code'] == selectedLanguageCode.value,
      orElse: () => {'name': 'Not Selected'},
    );
    return lang['name']!;
  }
}
