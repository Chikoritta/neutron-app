import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neutron_app/screens/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.center,
            //   end: Alignment.topCenter,
            //   colors: [
            //     Color(0xff000000),
            //     Color(0xff04619f),
            //   ],
            // ),
            // image: DecorationImage(
            //   image: AssetImage('assets/science1.png'),
            //   alignment: Alignment.bottomRight,
            //   fit: BoxFit.contain,
            // ),
            ),
        // child: Image(
        //   image: AssetImage('assets/science1.png'),
        // ),
        child: SplashScreenView(
          navigateRoute: HomePage(),
          duration: 5000,
          imageSize: 250,
          imageSrc: "assets/science1.png",
          text: "Neutron",
          textType: TextType.NormalText,
          textStyle: GoogleFonts.acme(
            textStyle: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          // backgroundColor: Colors.white,
        ),
      ),

      // body: Stack(
      //   children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height,
      //       decoration: const BoxDecoration(
      //         color: Colors.black,
      //         image: DecorationImage(
      //           image: AssetImage('assets/giphy.gif'),
      //           fit: BoxFit.fitWidth,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: MediaQuery.of(context).size.height / 8,
      //       left: MediaQuery.of(context).size.width / 3,
      //       child: Text(
      //         'Neutron',
      //         style: TextStyle(
      //           fontSize: 35.0,
      //           color: Color(0xddC6EFF2),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
