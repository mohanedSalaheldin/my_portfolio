import 'package:flutter/material.dart';
import 'package:my_portfolio/configs/themes.dart';
import 'package:my_portfolio/screens/layout_screen.dart';

void main() {
  runApp(const MyApp());
}
// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => const MyApp(), // Wrap your app
//       ),
//     );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohaned Portfolio',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: LayoutScreen(),
    );
  }
}
