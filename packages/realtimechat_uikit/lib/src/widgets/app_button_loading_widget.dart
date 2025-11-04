import 'package:flutter/cupertino.dart';

class AppButtonLoadingWidget extends StatelessWidget {
  const AppButtonLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 25,
      height: 25,
      child: CupertinoActivityIndicator(),
    );
  }
}
