import 'package:flutter/material.dart';

import 'app.dart';
import 'core/app_translator.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppTranslator.loadLanguage();
  runApp(const MyApp());
}
