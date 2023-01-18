import 'package:flutter/material.dart';

import './color.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primaryColor),
      home: const HomeScreen(),
    );
  }
}
