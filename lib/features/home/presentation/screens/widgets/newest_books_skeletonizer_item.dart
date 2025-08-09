import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestBooksSkeletonizerItem extends StatelessWidget {
  const NewestBooksSkeletonizerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 105,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/book_error.png'),
            ),
          ),
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: Text(
                'Book title',
                style: GoogleFonts.instrumentSerif(fontSize: 20),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Text(
              'Book Author',
              style: Styles.regular14.copyWith(color: Color(0xffB7B6BC)),
            ),
            Row(
              children: [
                Text('price', style: Styles.bold20),
                SizedBox(width: 36),
                BookRatingWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
