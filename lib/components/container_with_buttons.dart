import 'package:flutter/material.dart';
import 'package:neutron_app/components/top_circular_icon.dart';

class ContainerWithButtons extends StatelessWidget {
  const ContainerWithButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0)),
        //color: Colors.red,
        boxShadow: const [
          BoxShadow(
            color: Color(0xffa3a3ac),
            spreadRadius: 1.5,
            blurRadius: 2.5,
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/computer.jpeg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.10), BlendMode.srcOver),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width % 27,
          left: MediaQuery.of(context).size.width % 27,
          top: MediaQuery.of(context).size.height % 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.width / 13,
                child: const TopCircularIcon(
                  icon: Icons.keyboard_arrow_left,
                  // iconSize: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.width / 13,
              child: const TopCircularIcon(
                icon: Icons.favorite_border_outlined,
                // iconSize: MediaQuery.of(context).size.width / 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
