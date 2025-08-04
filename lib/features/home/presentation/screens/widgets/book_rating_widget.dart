import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset('assets/icons/star.svg'),
        SizedBox(width: 6),
        Text('4.8', style: Styles.medium16),
        SizedBox(width: 4),
        Text(
          '(2390)',
          style: Styles.regular14.copyWith(color: Color(0xff87858F)),
        ),
      ],
    );
  }
}
