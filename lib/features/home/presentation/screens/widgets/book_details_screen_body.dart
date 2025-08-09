import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/screens/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/screens/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            BookDetailsSection(book: bookModel),
            SimilarBooksSection(),
          ],
        ),
      ),
    );
  }
}
