import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/category_type.dart';
import 'package:neutron_app/components/custom_icon.dart';
import 'package:neutron_app/components/custome_bottom_card.dart';
import 'package:neutron_app/components/search_text_field.dart';
import 'package:neutron_app/components/timer_card.dart';
import 'package:neutron_app/components/titels.dart';
import 'package:neutron_app/constants.dart';
import 'package:neutron_app/screens/home_page.dart';
import 'package:neutron_app/screens/large_screens/course_details_large_page.dart';

class HomePageLargeScreen extends StatefulWidget {
  const HomePageLargeScreen({Key? key}) : super(key: key);

  @override
  State<HomePageLargeScreen> createState() => _HomePageLargeScreenState();
}

class _HomePageLargeScreenState extends State<HomePageLargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: kPagePaddingLandscape,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Hi, Charile!', style: kLargestText),
                      Spacer(),
                      CustomIcon(
                        icon: Icons.notifications_none_rounded,
                        notifColor: Colors.yellow,
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
                    Expanded(child: SearchTextField()),
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
                AspectRatio(
                  aspectRatio: 2.5,
                  child: TimerCard(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CourseDetailsLargeScreen())),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: kPagePaddingLandscape,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  width: 625,
                  height: 0.2,
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
                  width: 625,
                  height: 0.2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
