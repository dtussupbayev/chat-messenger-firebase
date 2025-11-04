import 'package:flutter/material.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RealtimeChat UI Kit Example',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system, // Or ThemeMode.light, ThemeMode.dark
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Kit Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is the AppButtonLoadingWidget:'),
            const SizedBox(height: 20),
            const AppButtonLoadingWidget(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Themed Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
}
