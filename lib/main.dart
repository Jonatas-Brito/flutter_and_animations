import 'package:flutter/material.dart';

import 'first_animation/first_animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xffE62E4D),
          colorScheme: const ColorScheme.light(
            brightness: Brightness.light,
            secondary: Color(0xffE62E4D),
            primary: Color(0xffE62E4D),
            error: Color(0xffE62E4D),
            onError: Color(0xffE62E4D),
            background: Color(0xffE62E4D),
            surface: Colors.white,
            onSurface: Colors.white,
          )),
      home: const FirstAnimationPage(),
    );
  }
}
