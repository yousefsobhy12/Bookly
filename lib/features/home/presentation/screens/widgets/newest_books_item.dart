import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen, extra: book);
      },
      child: Row(
        children: [
          SizedBox(
            height: 105,
            width: 70,
            child: BookCoverWidget(
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.volumeInfo.title!,
                  style: GoogleFonts.instrumentSerif(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  book.volumeInfo.authors![0],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Styles.regular14.copyWith(color: Color(0xffB7B6BC)),
                ),
                Row(
                  children: [
                    Text('Free', style: Styles.bold20),
                    SizedBox(width: 36),
                    BookRatingWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
