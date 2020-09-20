import 'package:flutter/material.dart';
import 'package:login_screen/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromRGBO(68, 5, 246, 1)),
      home: HomeScreen(),
    );
  }
}
