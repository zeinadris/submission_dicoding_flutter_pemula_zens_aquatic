import 'package:flutter/material.dart';
import 'package:zens_aquatic/detail_page.dart';
import 'package:zens_aquatic/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zens Aquatic App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const WelcomePage(),
    );
  }
}
