import 'package:flutter/material.dart';
import 'package:headphones/src/pages/home_page.dart';
import 'package:headphones/src/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
