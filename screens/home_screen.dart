import 'package:flutter/material.dart';
import 'package:login_screen/color.dart';
import 'package:login_screen/helpers/company_logo.dart';
import 'package:login_screen/helpers/my_custom_clipper.dart';
import 'package:login_screen/widgets/login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
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
                  CompanyLogo(),
                  SizedBox(height: 30.0),
                  Text(
                    'FIll the Below information to log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Login(),
                  SizedBox(height: 30.0),
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
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
