import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neutron_app/screens/large_screens/home_page_large_screen.dart';
import 'package:neutron_app/screens/my_courses_page.dart';
import 'package:neutron_app/screens/profile_page.dart';
import 'package:neutron_app/screens/search_page.dart';
import 'package:neutron_app/screens/small_screens/home_page_small_screen.dart';
import 'package:neutron_app/screens/wishlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final screens = [
    HomePageSmallScreen(),
    SearchPage(),
    MyCoursesPage(),
    WishlistPage(),
    ProfilePage(),
  ];
  final largeScreens = [
    HomePageLargeScreen(),
    SearchPage(),
    MyCoursesPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: LayoutBuilder(builder: (context, constraints) {
            //Large Screens
            if (constraints.maxWidth > 600) {
              return largeScreens[_currentIndex];
            }
            //Small Screens
            return screens[_currentIndex];
          }),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: FontAwesomeIcons.star, title: "Featured"),
            TabData(iconData: FontAwesomeIcons.search, title: "Search"),
            TabData(iconData: FontAwesomeIcons.graduationCap, title: "Courses"),
            TabData(iconData: FontAwesomeIcons.heart, title: "Wishlist"),
            TabData(iconData: FontAwesomeIcons.user, title: "Account"),
          ],
          // barBackgroundColor: constants.primaryColor,
          // circleColor: constants.secondaryColor,
          // inactiveIconColor: constants.secondaryColor,
          // activeIconColor: constants.primaryColor,
          onTabChangedListener: (position) {
            if (position != _currentIndex) {
              setState(() {
                _currentIndex = position;
              });
            }
          },
        ));
  }
}
