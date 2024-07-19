import 'package:e_store/pages/cart_page.dart';
import 'package:e_store/pages/intro_page.dart';
import 'package:e_store/pages/store_page.dart';
import 'package:e_store/theme/dark_mode.dart';
import 'package:e_store/theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/store_page': (context) => const StorePage(),
        '/cart_page': (context) => const CartPage(),
      },
      home: IntroPage(),
    );
  }
}
