import 'package:flutter/material.dart';

enum SnackBarType { error, success }

class SnackBarService {
  static const errorColor = Colors.red;
  static const okColor = Colors.green;

  static void showSnackBar(
    BuildContext context,
    String message, {
    required SnackBarType type,
    Color? customColor,
  }) {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(message, style: const TextStyle(color: Colors.white)),
      backgroundColor:
          customColor ??
          (() {
            switch (type) {
              case SnackBarType.error:
                return errorColor;
              case SnackBarType.success:
                return okColor;
            }
          })(),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
