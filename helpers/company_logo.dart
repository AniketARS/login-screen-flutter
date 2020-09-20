import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Dite',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'PlayBall',
              ),
            ),
            SizedBox(width: 8.0),
            SvgPicture.asset(
              'assets/icons/fork.svg',
              width: 20.0,
              color: Colors.white,
            ),
            SizedBox(width: 8.0),
            Text(
              'Guru',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'PlayBall',
              ),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: 1.0,
          decoration: BoxDecoration(color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'CALCULATE EVERY BITE',
            style: TextStyle(
              color: Colors.grey[100],
              fontSize: 15.0,
              letterSpacing: 1.2,
            ),
          ),
        )
      ],
    );
  }
}
