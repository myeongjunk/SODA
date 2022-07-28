import 'package:flutter/material.dart';

class slide1 extends StatelessWidget {
  const slide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(68, 267, 68, 36),
              child: SizedBox(
                width: 254,
                height: 270,
                child: Image.asset('assets/image/sodaicon1.png'),
              ),
            ),
            Text(
              'Copyright 2022 SODA. All rights reserved.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                letterSpacing: 0.1,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
