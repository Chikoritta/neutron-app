import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  _MyCoursesPageState createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  int height1 = 180;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double radius = width * 0.3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(radius * 0.09),
          child: Text(
            'My Courses',
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
        SizedBox(
          height: radius / 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WishlistCourse(
              radius: radius,
              image:
                  'https://i.pinimg.com/originals/e9/76/32/e97632ec437ea45fcde27d1f85b32fbc.png',
              courseName:
                  'Blazor - the Complete Guid\n(WASM & server.NET Core 5)',
              instructorName: 'Frank Liu',
            ),
            SizedBox(
              height: radius / 5,
            ),
            WishlistCourse(
              radius: radius,
              image:
                  'https://i.pinimg.com/originals/e9/76/32/e97632ec437ea45fcde27d1f85b32fbc.png',
              courseName:
                  'Complete Guid to ASP.NET Core\nRESUTful API With Blazor WASM)',
              instructorName: 'Ruben Heeren',
            ),
            SizedBox(
              height: radius / 5,
            ),
            WishlistCourse(
              radius: radius,
              image:
                  'https://i.pinimg.com/originals/e9/76/32/e97632ec437ea45fcde27d1f85b32fbc.png',
              courseName:
                  'Complete Guid to ASP.NET Core\nIdentity (.NET Core 5)',
              instructorName: 'Frank Liu',
            ),
          ],
        ),
      ],
    );
  }
}

class WishlistCourse extends StatelessWidget {
  const WishlistCourse({
    Key? key,
    required this.radius,
    required this.image,
    required this.courseName,
    required this.instructorName,
  }) : super(key: key);

  final double radius;
  final String image;
  final String courseName;
  final String instructorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: radius / 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: radius / 1.5,
            height: radius / 1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius / 5),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: radius / 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            //textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: radius / 18),
                child: Text(
                  courseName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    //overflow: TextOverflow.fade,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: radius / 18),
                child: Text(
                  instructorName,
                  style: const TextStyle(
                    //fontWeight: FontWeight.w700,
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
              // SliderTheme(
              //   data: SliderTheme.of(context).copyWith(
              //       activeTrackColor: Colors.white,
              //       trackHeight: 2.0,
              //       overlayShape:
              //           const RoundSliderOverlayShape(overlayRadius: 30.0),
              //       overlayColor: Color(0x29eb1555),
              //       thumbColor: Color(0xffeb1555),
              //       thumbShape: const RoundSliderThumbShape(
              //           enabledThumbRadius: 15.0)),
              //   child: Slider(
              //     value: height1.toDouble(),
              //     inactiveColor: Color(0xff8d8e98),
              //     onChanged: (double newValue) {
              //       setState(() {
              //         height1 = newValue.round();
              //       });
              //     },
              //   ),
              // ),
              const Text(
                'Start course',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
