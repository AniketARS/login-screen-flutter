import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Account',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(hintText: 'User name or E-mail'),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'In case you forget password ? ',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 1.0,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  child: Text(
                    'OR',
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  width: 32,
                ),
                SizedBox(width: 20.0),
                SvgPicture.asset(
                  'assets/icons/brands-and-logotypes.svg',
                  width: 32,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
