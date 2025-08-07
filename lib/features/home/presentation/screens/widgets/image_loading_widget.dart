import 'package:flutter/material.dart';

class ImageLoadingWidget extends StatelessWidget {
  const ImageLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Image.asset('assets/images/book_gif.gif'));
  }
}