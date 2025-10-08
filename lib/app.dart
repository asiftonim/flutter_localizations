import 'package:flutter/material.dart';
import 'features/home/presentations/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Translator App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

