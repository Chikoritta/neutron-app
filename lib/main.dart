import 'package:flutter/material.dart';
import 'package:neutron_app/screens/course_details_page.dart';
import 'package:neutron_app/screens/home_page.dart';
import 'package:neutron_app/screens/profile_page.dart';
import 'package:neutron_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/second': (context) => const SplashScreen(),
      //   '/third': (context) => const CoursePage(),
      //   '/fourth': (context) => const ProfilePage(),
      // },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
