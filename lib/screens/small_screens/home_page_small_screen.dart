import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/category_type.dart';
import 'package:neutron_app/components/custom_icon.dart';
import 'package:neutron_app/components/custome_bottom_card.dart';
import 'package:neutron_app/components/search_text_field.dart';
import 'package:neutron_app/components/timer_card.dart';
import 'package:neutron_app/components/titels.dart';
import 'package:neutron_app/constants.dart';
import '../course_details_page.dart';

class HomePageSmallScreen extends StatelessWidget {
  const HomePageSmallScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: kPagePadding,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: const [
              Text('Hi, Charlie!', style: kLargestText),
              Spacer(),
              CustomIcon(
                icon: Icons.notifications_none_rounded,
                notifColor: Color(0xffE3C371),
              ),
            ]),
            const Text(
              'Explore new skills with neutron',
              style: TextStyle(
                // letterSpacing: 0.5,
                color: Color(0xff4e4e4e),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SearchTextField(),
                const SizedBox(
                  width: 10.0,
                ),
                const CustomIcon(
                  icon: Icons.filter_list_outlined,
                  notifColor: secondaryColor,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            TimerCard(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CoursePage()))),
            const SizedBox(
              height: 20.0,
            ),
            const Titels(
              text: 'Select Category',
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 35.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryType(
                    icon: FontAwesomeIcons.code,
                    text: 'Programming',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryType(
                    icon: FontAwesomeIcons.drawPolygon,
                    text: 'Design',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryType(
                    icon: FontAwesomeIcons.calculator,
                    text: 'Math',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: const [
                Titels(
                  text: 'Featured Courses',
                ),
                Spacer(),
                Text(
                  'See All',
                  style: kSeeAllTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const CustomeBottomCard(
              image: 'assets/office1.jpeg',
              headingTitle: 'Data Structure and\nAlgorithms',
              iconText1: '211 Students',
              iconText2: '512 Likes',
              price: '\$8.99',
              height: 0.2,
              width: 300,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CustomeBottomCard(
              image: 'assets/images.jpeg',
              headingTitle: 'Python for Machine\nLearning',
              iconText1: '220 Students',
              iconText2: '455 Likes',
              price: '\$9.99',
              height: 0.2,
              width: 300,
            ),
          ]),
    );
  }
}
