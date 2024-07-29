import 'package:flutter/material.dart';
import 'package:my_portfolio/configs/themes.dart';
import 'package:my_portfolio/screens/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const LayoutScreen(),
    );
  }
}
