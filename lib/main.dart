import 'package:chapa_tu_aula/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:chapa_tu_aula/services/api_sum.dart';
import 'package:chapa_tu_aula/screens/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chapa Tu Aula',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.white),
        ),
        home: MyAppSplash()
    );
  }
}