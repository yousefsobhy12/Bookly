import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeaturedItemsSlider extends StatelessWidget {
  const FeaturedItemsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 6,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) {
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
          },
      options: CarouselOptions(
        height: 300,
        viewportFraction: 0.4,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}