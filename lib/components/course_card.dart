import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/titels.dart';
import '../constants.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: secondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1.5,
            blurRadius: 2.5,
            offset: Offset(2, 1.5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: primaryColor,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Titels(
                text: text,
              ),
              Text(
                '5 Minutes',
                style: TextStyle(
                  color: Color(0xffa5a5a7),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Icon(
            FontAwesomeIcons.lockOpen,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
