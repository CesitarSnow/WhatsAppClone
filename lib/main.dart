import 'package:clonewhatsap/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color(0xff075E55)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Color(0xff1CC858))),
      home: HomePage(),
    );
  }
}
