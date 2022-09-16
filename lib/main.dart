import 'package:flutter/material.dart';

import './Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'What\'s App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const HomeScreen());
  }
}
