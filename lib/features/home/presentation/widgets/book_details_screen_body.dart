import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.2),
            child: BookCoverWidget(),
          ),
          Text(
            'The Jungle Book',
            style: GoogleFonts.instrumentSerif(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Rudyard Kipling',
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
      ),
    );
  }
}
