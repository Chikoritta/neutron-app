import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/bottom_navigator_container.dart';
import 'package:neutron_app/components/course_card.dart';
import 'package:neutron_app/components/rating_stars.dart';
import 'package:neutron_app/components/small_details.dart';
import 'package:neutron_app/components/titels.dart';
import 'package:neutron_app/constants.dart';
import 'package:neutron_app/screens/large_screens/course_details_large_page.dart';
import 'package:neutron_app/screens/small_screens/course_details_small_page.dart';
import '../components/container_with_buttons.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          //Large Screens
          if (constraints.maxWidth > 600) {
            return CourseDetailsLargeScreen();
          }
          //Small Screens
          return CourseDetailsSmallPage();
        }),
      ),
    );
  }
}
