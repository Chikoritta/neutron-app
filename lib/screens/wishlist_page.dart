import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neutron_app/constants.dart';

import '../components/custome_bottom_card.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double radius = width * 0.3;
    return Padding(
      padding: EdgeInsets.all(radius * 0.09),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(radius * 0.09),
            child: Text(
              'Wishlist',
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: primaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: radius / 13.5,
                      top: radius / 13.5,
                    ),
                    width: radius * 3,
                    child: CustomeBottomCard(
                      image: 'assets/office1.jpeg',
                      headingTitle: 'Data Structure and\nAlgorithms',
                      iconText1: '211 Students',
                      iconText2: '512 Likes',
                      price: '\$8.99',
                      height: radius * 0.0013,
                      width: 300,
                    ),
                  ),
                  Container(
                    width: radius * 3,
                    margin: EdgeInsets.only(
                      bottom: radius / 13.5,
                    ),
                    child: CustomeBottomCard(
                      image: 'assets/images.jpeg',
                      headingTitle: 'Python for Machine\nLearning',
                      iconText1: '220 Students',
                      iconText2: '455 Likes',
                      price: '\$9.99',
                      height: radius * 0.0013,
                      width: 300,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: radius / 13.5,
                    ),
                    width: radius * 3,
                    child: CustomeBottomCard(
                      image: 'assets/office1.jpeg',
                      headingTitle: 'Database',
                      iconText1: '311 Students',
                      iconText2: '510 Likes',
                      price: '\$4.99',
                      height: radius * 0.0013,
                      width: 300,
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
