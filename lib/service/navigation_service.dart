import 'package:flutter/material.dart';

class NavigationService {
  // Cria uma instância singleton para o NavigationService
  static final NavigationService _instance = NavigationService._internal();

  factory NavigationService() {
    return _instance;
  }

  NavigationService._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Método para navegar para uma nova página
  void navigateTo(Widget page) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Método para navegar de volta
  void navigateBack() {
    navigatorKey.currentState?.pop();
  }
}
