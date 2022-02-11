import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:neutron_app/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double radius = width * 0.3;
    // print(height);
    // print(height - ((height * 0.95) / 100));
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              FractionalTranslation(
                translation: Offset(-0.05, -0.5),
                // translation: Offset(0, height - (height * 0.95)),
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(330 / 360),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        //Color(0xffb8c6db),
                        //Color(0xd9253359),
                        Color(0xff253359),
                        Color(0xff253359),
                      ]),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade300,
                            spreadRadius: 3)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 40,
                child: Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                      color: Color(0xcc9595a1),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://randomuser.me/api/portraits/men/18.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.all(Radius.circular(radius * 0.5)),
                      boxShadow: const [
                        BoxShadow(color: Color(0x50ffffff), spreadRadius: 2.5)
                      ]),
                ),
              ),
              Positioned(
                left: width * 0.05,
                top: height * 0.05,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Charlie Vincent',
                        style: TextStyle(
                            color: Color(0xfffafafa),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500)),
                    Text(
                      'charlievincentr@gmail.com',
                      style: TextStyle(
                        color: Color(0xfffafafa),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              AccountDetails(
                radius: radius,
                icon: Icons.email_outlined,
                smallText: 'Contact',
                largeText: 'Email notifications',
                iconColor: primaryColor,
              ),
              AccountDetails(
                radius: radius,
                icon: Icons.privacy_tip_outlined,
                smallText: 'Privacy',
                largeText: 'Privacy and Security',
                iconColor: primaryColor,
              ),
              AccountDetails(
                radius: radius,
                icon: Icons.settings_outlined,
                smallText: 'Settings',
                largeText: 'Account management',
                iconColor: primaryColor,
              ),
              AccountDetails(
                radius: radius,
                icon: Icons.help_outline_outlined,
                smallText: 'Questions',
                largeText: 'Help and Support',
                iconColor: primaryColor,
              ),
              AccountDetails(
                radius: radius,
                icon: Icons.phone_outlined,
                smallText: 'Phone',
                largeText: '+9645890346791',
                iconColor: primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    Key? key,
    required this.radius,
    required this.icon,
    required this.iconColor,
    required this.smallText,
    required this.largeText,
  }) : super(key: key);

  final double radius;
  final IconData icon;
  final Color iconColor;
  final String smallText;
  final String largeText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: radius / 5, bottom: radius / 5),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: primaryColor,
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.grey.shade300, spreadRadius: 3)
              ],
            ),
            child: CircleAvatar(
              foregroundColor: iconColor,
              backgroundColor: secondaryColor,
              child: Icon(icon),
            ),
          ),
          SizedBox(
            width: radius / 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(smallText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  )),
              Text(largeText,
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
            ],
          )
        ],
      ),
    );
  }
}
