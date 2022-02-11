import 'package:flutter/material.dart';

class Titels extends StatelessWidget {
  final String? text;

  const Titels({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: Color(0xff414141),
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      ),
    );
  }
}
