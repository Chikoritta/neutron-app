import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavigatorContainer extends StatelessWidget {
  const BottomNavigatorContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 80.0,
        right: 80.0,
        bottom: 25.0,
        top: 8.0,
      ),
      // width: MediaQuery.of(context).size.width / 2,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
        child: Text(
          'Enroll Class',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
