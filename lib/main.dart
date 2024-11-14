import 'package:flutter/material.dart';
import 'package:inspiraapp/pages/login_page.dart';
import 'package:inspiraapp/pages/menu_page.dart';
import 'package:inspiraapp/service/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      navigatorKey:  NavigationService().navigatorKey,
      home:
          LoginPage(), // Certifica de que LoginPage está definido corretamente
    );
  }
}

void main() {
  runApp(const MyApp());
}