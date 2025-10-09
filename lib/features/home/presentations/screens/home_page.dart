import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../onbording/onborboardin_screen.dart';
import '../../controllers/language_controller.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LanguageController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Choose Language',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xFFFC961A),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Obx(() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            ...controller.languages.map((lang) {
              bool isSelected =
                  controller.selectedLanguageCode.value == lang['code'];
              return GestureDetector(
                onTap: () => controller.selectLanguage(lang['code']!),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFFC961A) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color(0xFFFC961A), width: 1.4),
                  ),
                  child: Text(
                    lang['name']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: isSelected ? Colors.white : const Color(0xFFFC961A),
                      fontWeight:
                      isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              );
            }),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (controller.selectedLanguageCode.value.isEmpty) {
                  Get.snackbar('Warning','Please select a language first!',
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                      snackPosition: SnackPosition.TOP);
                  return;
                }
                Get.to(() => const OnborboardinScreen());
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFC961A),
                ),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

