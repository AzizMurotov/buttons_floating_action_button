import 'package:click_app/button_page.dart';
import 'package:click_app/home_page.dart';
import 'package:click_app/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        SecondPage.id:(context)=>const SecondPage(),
        ButtonPage.id:(context)=>const ButtonPage(),
      },
    );
  }
}
