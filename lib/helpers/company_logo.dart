import 'package:flutter/material.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
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
            Icon(
              Icons.restaurant_menu_outlined,
              size: 24,
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
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
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
