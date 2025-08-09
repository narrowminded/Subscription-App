import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // Primary teal/blue color from mockups
  final MaterialColor primarySwatch = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscription',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: primarySwatch,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription — Dashboard'),
      ),
      body: Center(
        child: Text(
          'This is a minimal debug scaffold for the Subscription app.\n\n'
          'Follow the README to push to GitHub and run the debug APK workflow.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
