import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens/main_screen.dart';

void main() {
  runApp(const ImagesApp());
}

class ImagesApp extends StatelessWidget {
  const ImagesApp({super.key});
  final Color black = Colors.black;


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Images Feed",
        theme: ThemeData.light().copyWith(
          primaryColor: black,
          colorScheme: ColorScheme.light().copyWith(
            primary: black,
            secondary: black,
          )
        ),
        home: MainScreen()
      );
  }
}