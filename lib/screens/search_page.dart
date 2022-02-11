import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neutron_app/components/search_text_field.dart';
import 'package:neutron_app/constants.dart';

import '../components/category_type.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double radius = width * 0.3;

    return Padding(
      padding: EdgeInsets.only(left: radius * 0.09),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: double.infinity,
              height: radius / 1.75,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: radius * 0.09, horizontal: radius * 0.095),
                child: SearchTextField(),
              )),
          Divider(color: Colors.grey),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: radius * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.only(bottom: radius / 5, top: radius / 5),
                      width: radius,
                      height: radius,
                      decoration: BoxDecoration(
                        //color: primaryColor,
                        borderRadius: BorderRadius.circular(radius / 3),
                        image: const DecorationImage(
                          image: AssetImage('assets/search.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Discover Courses',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: radius / 5,
                      ),
                      Center(
                        child: Text(
                          'Try discovering new courses with search or \nbrowse our categories',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 18.0,
                            // fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: radius / 3,
                  ),
                  Text(
                    'Top searches',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: radius / 5,
                  ),
                  Container(
                    height: 35.0,
                    child: Wrap(
                      runSpacing: radius / 8,
                      //shrinkWrap: true,
                      //scrollDirection: Axis.horizontal,
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
                        const SizedBox(
                          width: 20.0,
                        ),
                        CategoryType(
                          icon: FontAwesomeIcons.swimmer,
                          text: 'Swimming',
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        CategoryType(
                          icon: FontAwesomeIcons.coffee,
                          text: 'Cooking',
                        ),
                      ],
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
