import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_translator.dart';
import '../../../home/controllers/language_controller.dart';
import '../../controllers/onboarding_controller.dart';

class OnborboardinScreen extends StatelessWidget {
  OnborboardinScreen({super.key});


  final OnboardingController controller = Get.put(OnboardingController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 134),
              const Image(
                image: AssetImage("assets/images/Shopping bag-cuate 1.png"),
              ),

              // Reactive Hello Text
              Obx(() {
                AppTranslator.currentLanguage = controller.currentLanguage.value;
                return Text(
                  AppTranslator.t('hello'),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                );
              }),
              SizedBox(height: 10),

              // Reactive SubText
              Obx(() {
                AppTranslator.currentLanguage = controller.currentLanguage.value;
                return Text(
                  textAlign: TextAlign.center,
                  AppTranslator.t('Choose'),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                );
              })

            ],
          ),
        ),
      ),
    );
  }
}

