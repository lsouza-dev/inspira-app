import 'package:flutter/material.dart';
import 'package:inspiraapp/pages/menu_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home:
          MenuPage(), // Certifica de que LoginPage está definido corretamente
    );
  }
}

void main() {
  runApp(const MyApp());
}