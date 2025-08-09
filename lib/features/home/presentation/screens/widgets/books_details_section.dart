import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.2),
          child: AspectRatio(
            aspectRatio: 162 / 243,
            child: BookCoverWidget(
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
          ),
        ),
        SizedBox(height: 42),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: GoogleFonts.instrumentSerif(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo.authors![0],
          style: Styles.regular18.copyWith(
            fontStyle: FontStyle.italic,
            color: Color(0xffB7B6BC),
          ),
        ),
        SizedBox(height: 18),
        BookRatingWidget(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 40),
        BookActions(),
      ],
    );
  }
}
