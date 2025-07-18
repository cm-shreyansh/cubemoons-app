import 'package:flutter/material.dart';
import 'package:cubemoons/core/theme.dart';
import 'package:cubemoons/messages_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubemoons',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: MessagesPage()
    );
  }
}

