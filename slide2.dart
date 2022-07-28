import 'package:flutter/material.dart';

class slide2 extends StatelessWidget {
  const slide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          width: 276,
          height: 86,
          child: Image.asset('assets/image/soda2.png'),
        ),
      ),
    );
  }
}
