import 'package:flutter/material.dart';
import 'package:neutron_app/constants.dart';

class SmallDetails extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final String? text1;
  final String? text2;
  final double? size;
  const SmallDetails(
      {required this.icon1,
      required this.icon2,
      this.text1,
      this.text2,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon1,
          color: kIconAndTextColor,
          size: size,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          text1!,
          style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w700,
              color: kIconAndTextColor),
        ),
        SizedBox(
          width: 15.0,
        ),
        Icon(
          icon2,
          color: kIconAndTextColor,
          size: size,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          text2!,
          style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w700,
              color: kIconAndTextColor),
        )
      ],
    );
  }
}
