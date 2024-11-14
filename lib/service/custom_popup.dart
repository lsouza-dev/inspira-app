import 'package:flutter/material.dart';

class CustomPopup {
  // Método para exibir o pop-up
  static void show({
    required BuildContext context,
    required String title,
    required String content,
    required List<TextButton> actions
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: actions
        );
      },
    );
  }
}
