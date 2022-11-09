import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/startupscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      fallbackLocale: Locale('en'),
      saveLocale: false,
      useOnlyLangCode: true,
      supportedLocales: [
        Locale('en',''),
        Locale('ar',''),
        Locale('es',''),
        Locale('fr',''),
        Locale('hi',''),
        Locale('pt','')
      ],
      path: 'assets/translations',
      
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  
  Widget build(BuildContext context) {


    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Trading Signals',
      home: StrcutureScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
