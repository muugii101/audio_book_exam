import 'package:audio_book_exam/screens/main/tab.container.dart';
import 'package:flutter/material.dart';
import 'package:audio_book_exam/theme/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: const TabContainerDefault(),
    );
  }
}
