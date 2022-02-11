import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/container_with_buttons.dart';
import 'package:neutron_app/components/course_card.dart';
import 'package:neutron_app/components/rating_stars.dart';
import 'package:neutron_app/components/small_details.dart';
import 'package:neutron_app/components/titels.dart';
import 'package:neutron_app/constants.dart';

class CourseDetailsLargeScreen extends StatelessWidget {
  const CourseDetailsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const AspectRatio(
                      aspectRatio: 1.2, child: ContainerWithButtons()),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Laravel Framework-\nBeginner Class',
                              style: kLargestTextLandscape,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '\$8.00',
                                style: kLargestTextLandscape,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const SmallDetails(
                          size: 10.0,
                          icon1: FontAwesomeIcons.solidUser,
                          text1: '210 Students',
                          icon2: FontAwesomeIcons.solidHeart,
                          text2: '185 Likes',
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const RatingStars(
                          itemSize: 16.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              padding: kPagePadding,
              child: Column(
                children: [
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
            )),
      ],
    );
  }
}
