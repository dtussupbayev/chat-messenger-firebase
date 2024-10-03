import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArrawBackButton extends StatelessWidget {
  const ArrawBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    );
  }
}
