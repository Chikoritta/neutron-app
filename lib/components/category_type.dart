import 'package:flutter/material.dart';
import 'package:neutron_app/components/button_click_behaviour.dart';
import '../constants.dart';

class CategoryType extends StatelessWidget {
  final String? text;
  final IconData icon;

  CategoryType({
    this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            );
          },
        ),
        side: getBorder(primaryColor, secondaryColor),
        foregroundColor: getColor(primaryColor, secondaryColor),
        backgroundColor: getColor(secondaryColor, primaryColor),
        padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 15.0,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                text!,
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
