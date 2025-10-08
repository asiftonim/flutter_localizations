import 'package:flutter/material.dart';
import '../../../../core/app_translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _toggleLanguage() {
    setState(() {
      AppTranslator.changeLanguage(
          AppTranslator.currentLanguage == 'en' ? 'bn' : 'en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppTranslator.t('Choose')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTranslator.t('hello'),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleLanguage,
              child: Text(AppTranslator.t('change_language')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppTranslator.t('login')),
            ),
          ],
        ),
      ),
    );
  }
}


