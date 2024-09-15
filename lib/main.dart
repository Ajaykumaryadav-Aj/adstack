import 'package:adstacks/constant/constant.dart';
import 'package:adstacks/screens/main_screens.dart';
import 'package:adstacks/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adstacks Admin',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        // brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MainScreens(),
    );
  }
}

