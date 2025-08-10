import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              title: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLaunchUrl(context, book.volumeInfo.previewLink);
              },
              backgroundColor: buttonBackgroundColor(book),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              title: buttonText(book),
            ),
          ),
        ],
      ),
    );
  }
}

String buttonText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink != null) {
    return 'Preview';
  } else {
    return 'Not Available';
  }
}

Color buttonBackgroundColor(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink != null) {
    return Color(0xffEF8262);
  } else {
    return Colors.grey;
  }
}
