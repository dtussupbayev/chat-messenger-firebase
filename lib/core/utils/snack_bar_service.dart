import 'package:flutter/material.dart';

class SnackBarService {
  static const errorColor = Colors.red;
  static const okColor = Colors.green;

  static void showSnackBar(
    BuildContext context,
    String message, {
    required bool isError,
  }) {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(message, style: const TextStyle(color: Colors.white)),
      backgroundColor: isError ? errorColor : okColor,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
