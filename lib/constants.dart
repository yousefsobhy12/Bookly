import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);
const kSecondaryColor = Color(0xffEF8262);
var carouselOptions = CarouselOptions(
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
);
