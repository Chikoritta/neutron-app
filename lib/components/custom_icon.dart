import 'package:flutter/material.dart';
import '../constants.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({required this.icon, this.notifColor});
  final Color? notifColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: secondaryColor),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              backgroundColor: notifColor,
              maxRadius: 7,
            ),
          ),
          Icon(
            icon,
            color: primaryColor,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
