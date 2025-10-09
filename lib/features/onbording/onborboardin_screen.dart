import 'package:flutter/material.dart';
import '../../core/app_translator.dart';

class OnborboardinScreen extends StatefulWidget {
  const OnborboardinScreen({super.key});

  @override
  State<OnborboardinScreen> createState() => _OnborboardinScreenState();
}

class _OnborboardinScreenState extends State<OnborboardinScreen> {
  @override
  void initState() {
    super.initState();
    _loadLang();
  }

  Future<void> _loadLang() async {
    await AppTranslator.loadLanguage();
    setState(() {});
  }

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
              Text(
                AppTranslator.t('hello'),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                AppTranslator.t('Choose'),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
