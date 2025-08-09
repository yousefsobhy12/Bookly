import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_cover_widget.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        SizedBox(height: 50),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('You can also like', style: Styles.medium14),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: deviceWidth * 0.32,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return AspectRatio(
                aspectRatio: 70 / 112,
                child: BookCoverWidget(
                  imageUrl:
                      'http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 10);
            },
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
