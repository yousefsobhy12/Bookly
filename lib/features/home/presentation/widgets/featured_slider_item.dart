import 'package:flutter/material.dart';

class FeaturedSliderItem extends StatelessWidget {
  const FeaturedSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dummy_pic.png'),
          ),
        ),
      ),
    );
  }
}
