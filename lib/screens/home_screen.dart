import 'package:flutter/material.dart';

import '../color.dart';
import '../helpers/company_logo.dart';
import '../helpers/my_custom_clipper.dart';
import '../widgets/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    AppColors.secondaryColor,
                    Theme.of(context).primaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CompanyLogo(),
                  const SizedBox(height: 30.0),
                  const Text(
                    'FIll the Below information to log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Login(),
                  const SizedBox(height: 30.0),
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
