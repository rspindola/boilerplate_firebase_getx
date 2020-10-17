import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'd',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Color(0xffe46b10),
          fontSize: 30,
        ),
        children: [
          TextSpan(
            text: 'ev',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          TextSpan(
            text: 'rnz',
            style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
          ),
        ],
      ),
    );
  }
}
