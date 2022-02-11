import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingStars extends StatelessWidget {
  final double itemSize;
  const RatingStars({
    required this.itemSize,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      itemSize: itemSize,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        FontAwesomeIcons.solidStar,
        color: Color(0xffE3C371),
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
