import 'package:flutter/material.dart';
import '../constants.dart';

class TopCircularIcon extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  const TopCircularIcon({
    required this.icon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      //radius: MediaQuery.of(context).size.width / 40,
      backgroundColor: secondaryColor,
      child: Icon(
        icon,
        color: primaryColor,
        //size: iconSize,
      ),
    );
  }
}
