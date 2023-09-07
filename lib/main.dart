import 'package:atmega/model/consts.dart';
import 'package:atmega/screens/home/home.dart';
import 'package:atmega/screens/splash/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Consts.title,
      initialRoute: '/splash',
      routes: {
        '/splash':(context) => Splash(),
        '/home':(context) => HomePage(),
      },
    );
  }
}