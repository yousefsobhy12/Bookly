import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
      },
      child: Row(
        children: [
          Container(
            height: 105,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dummy_pic.png'),
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
                  'Harry Potter and the Goblet of Fire',
                  style: GoogleFonts.instrumentSerif(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                'J.K. Rowling',
                style: Styles.regular14.copyWith(color: Color(0xffB7B6BC)),
              ),
              Row(
                children: [
                  Text('19.99 €', style: Styles.bold20),
                  SizedBox(width: 36),
                  BookRatingWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
