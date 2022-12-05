import 'package:flutter/material.dart';
import 'Screem/screens_Login.dart';


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
      theme: ThemeData(
        primaryColor: Colors.orangeAccent[400],
      ),
      home: const ScreemLogin(),
    );
  }
}
