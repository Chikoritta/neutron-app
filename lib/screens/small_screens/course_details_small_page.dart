import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/container_with_buttons.dart';
import 'package:neutron_app/components/course_card.dart';
import 'package:neutron_app/components/titels.dart';

import '../../components/rating_stars.dart';
import '../../components/small_details.dart';
import '../../constants.dart';

class CourseDetailsSmallPage extends StatelessWidget {
  const CourseDetailsSmallPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerWithButtons(),
          Padding(
            padding: const EdgeInsets.only(
                left: 35.0, top: 15.0, right: 35.0, bottom: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Laravel Framework-\nBeginner Class',
                      style: kLargestText,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '\$8.00',
                        style: kLargestText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const SmallDetails(
                  size: 15.0,
                  icon1: FontAwesomeIcons.solidUser,
                  text1: '210 Students',
                  icon2: FontAwesomeIcons.solidHeart,
                  text2: '185 Likes',
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const RatingStars(
                  itemSize: 18.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: const [
                    Titels(
                      text: 'The Course Overview',
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
                const Text(
                  'Laravel adalah salah satu Framework PHP yang paling populer dan paling banyak digunakan di seluruh dunia dalam membangun aplikasi web mulai dari proyek kecil hingga besar. Framework ini banyak digunakan oleh Web Developer karena kinerja, fitur, dan skalabilitas nya.',
                  style: TextStyle(
                    color: Color(0xffa5a5a7),
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const CourseCard(text: 'Introdction Laravel'),
                const SizedBox(
                  height: 20.0,
                ),
                const CourseCard(text: 'Exploring Laravel Files'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
