import 'package:flutter/material.dart';
import '../constants.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double radius = width * 0.3;
    return SizedBox(
      width: MediaQuery.of(context).size.width - 130,
      child: Stack(
        children: [
          Container(
            //clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Theme(
                data: ThemeData(
                  textTheme:
                      TextTheme(subtitle1: TextStyle(color: Colors.green)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for courses",
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xffa2a6b1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: radius / 10,
            right: radius / 7,
            // bottom: radius / 7,
            child: Icon(
              Icons.search,
              color: Color(0xffa2a6b1),
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
