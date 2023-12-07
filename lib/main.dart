import 'package:flutter/material.dart';
import 'package:takumichat/intro_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroView(),
    );
  }
}
