import 'package:flutter/material.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 51, 42, 78),
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Book thumbnail isn\'t available!',
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/images/book_error.png', height: 50),
        ],
      ),
    );
  }
}