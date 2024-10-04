import 'package:flutter/material.dart';

class AppButtonLoadingWidget extends StatelessWidget {
  const AppButtonLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 2.5,
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
