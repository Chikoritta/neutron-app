import 'package:flutter/material.dart';
import '../constants.dart';

class TimerCard extends StatelessWidget {
  final Function()? onTap;

  const TimerCard({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffa3a3ac),
              spreadRadius: 1.5,
              blurRadius: 2.5,
              // changes position of shadow
            ),
          ],
          image: DecorationImage(
            image: const AssetImage('assets/computer.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.10), BlendMode.srcOver),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Laravel Framework Class',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Coming soon',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                //fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FullTime(
                  textNumber1: '0',
                  textNumber2: '7',
                  textTime: 'Days',
                  colon: ':',
                ),
                SizedBox(
                  width: 15.0,
                ),
                FullTime(
                  textNumber1: '1',
                  textNumber2: '5',
                  textTime: 'Hours',
                  colon: ':',
                ),
                SizedBox(
                  width: 15.0,
                ),
                FullTime(
                  textNumber1: '2',
                  textNumber2: '9',
                  textTime: 'Mintue',
                  colon: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FullTime extends StatelessWidget {
  final String textNumber1;
  final String textNumber2;
  final String textTime;
  final String? colon;

  const FullTime({
    required this.textNumber1,
    required this.textNumber2,
    required this.textTime,
    this.colon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            TimeCube(
              text: textNumber1,
            ),
            SizedBox(
              width: 5.0,
            ),
            TimeCube(
              text: textNumber2,
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              colon!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
          child: Text(
            textTime,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class TimeCube extends StatelessWidget {
  final String text;

  const TimeCube({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0), //or 15.0
      child: Container(
        height: 25.0,
        width: 25.0,
        color: secondaryColor,
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
