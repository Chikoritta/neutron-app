import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/components/rating_stars.dart';
import 'package:neutron_app/components/small_details.dart';
import 'package:neutron_app/components/top_circular_icon.dart';
import '../constants.dart';

class CustomeBottomCard extends StatelessWidget {
  final String? price;
  final String image;
  final String headingTitle;
  final String iconText1;
  final String iconText2;
  final double? width;
  final double? height;

  const CustomeBottomCard({
    this.price,
    required this.image,
    required this.headingTitle,
    required this.iconText1,
    required this.iconText2,
    this.width,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                height: MediaQuery.of(context).size.height * height!,
                width: MediaQuery.of(context).size.width - width!,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TopCircularIcon(
                      icon: Icons.play_arrow,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Preview',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 200,
            height: 140,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 15.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0, left: 8.0),
                    child: Text(
                      headingTitle,
                      style: const TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ),
                  SmallDetails(
                    icon1: FontAwesomeIcons.solidUser,
                    size: 10.0,
                    text1: iconText1,
                    icon2: FontAwesomeIcons.solidHeart,
                    text2: iconText2,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RatingStars(
                    itemSize: 12.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      price!,
                      style: const TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
