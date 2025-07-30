import 'package:bookly/features/home/presentation/widgets/featured_slider_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeaturedItemsSlider extends StatelessWidget {
  const FeaturedItemsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return FeaturedSliderItem();
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
