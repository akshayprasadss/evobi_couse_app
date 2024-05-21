
//import 'package:evobii_akshay/first_page.dart';
// import 'package:evobii_akshay/first_page.dart';
// import 'package:evobii_akshay/second_page.dart';
//import 'package:evobii_akshay/seventh_page.dart';
import 'package:evobii_akshay/fifth_page.dart';
import 'package:evobii_akshay/first_page.dart';
import 'package:evobii_akshay/second_page.dart';
import 'package:evobii_akshay/seventh_page.dart';
import 'package:evobii_akshay/sixth_page.dart';
//import 'package:evobii_akshay/seventh_page.dart';
//import 'package:evobii_akshay/sixth_page.dart';
import 'package:flutter/material.dart';
//import 'processing_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:FirstPage(),
    );
  }
}
