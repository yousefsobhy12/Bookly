import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl), // or NetworkImage
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
