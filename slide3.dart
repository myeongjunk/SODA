import 'package:flutter/material.dart';

class slide3 extends StatelessWidget {
  const slide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 183,
              height: 86,
              child: Image.asset('assets/image/soda1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
