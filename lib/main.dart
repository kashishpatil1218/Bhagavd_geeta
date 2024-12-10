
 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'provider/home_provider.dart';
import 'screens/home page/home_page.dart';
import 'screens/splash screen/splash_screen.dart';
import 'screens/verse page/verse_page.dart';
import 'screens/verses/verses_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomePage(),
          '/verses': (context) => const VersesPage(),
          '/verse': (context) => const VersePage(),
        },
      ),
    );
  }
}
