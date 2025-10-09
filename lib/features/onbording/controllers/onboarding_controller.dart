import 'package:get/get.dart';
import '../../../core/app_translator.dart';
import '../../core/app_translator.dart';

class OnboardingController extends GetxController {
  // Reactive variable to track current language
  var currentLanguage = 'en'.obs;

  @override
  void onInit() {
    super.onInit();
    loadLanguage();
  }

  Future<void> loadLanguage() async {
    await AppTranslator.loadLanguage();
    currentLanguage.value = AppTranslator.currentLanguage;
  }

  // Optional: change language dynamically
  Future<void> changeLanguage(String langCode) async {
    await AppTranslator.changeLanguage(langCode);
    currentLanguage.value = langCode;
  }
}
