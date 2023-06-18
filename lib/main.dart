import 'package:flutter/material.dart';
import 'package:money_manager/utils/constants.dart';
import 'package:money_manager/view/screens/main_screen_host.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: background),
        brightness: Brightness.light,
      ),
      home: const MainScreenHost(),
    );
  }
}
