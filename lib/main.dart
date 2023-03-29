import 'package:flutter/material.dart';
import '../screens/main_screen.dart';


void main() {
  runApp(ImagesApp());
}

class ImagesApp extends StatelessWidget {
  const ImagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MainScreen()
    );
  }
}