import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    
     home: HomeScreen());
  }
}


