import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localizations/core/common/widgets/custom_text_fields.dart';
import '../../../core/app_translator.dart';
import '../../onbording/controllers/onboarding_controller.dart';
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final OnboardingController controller = Get.put(OnboardingController());
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  AppTranslator.currentLanguage = controller.currentLanguage.value;
                  return Text(
                    AppTranslator.t('login'),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  );
                }),
                Obx(() {
                  AppTranslator.currentLanguage = controller.currentLanguage.value;
                  return Text(
                    AppTranslator.t('login text'),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  );
                }),SizedBox(height: 10,),
                Obx(() {
                  AppTranslator.currentLanguage = controller.currentLanguage.value;
                  return Text(
                    AppTranslator.t('Email Address'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  );
                }),
                CustomTextField(hintText: "  enter your email", controller: emailController)
              ],
            ),
          )),
    );
  }
}
