import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/failure_state_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FeaturedItemsSlider extends StatelessWidget {
  const FeaturedItemsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return CarouselSlider.builder(
            itemCount: state.books.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
                  return BookCoverWidget(
                    imageUrl:
                        state.books[itemIndex].volumeInfo.imageLinks.thumbnail,
                  );
                },
            options: carouselOptions,
          );
        } else if (state is FeaturedBooksLoading) {
          return Skeletonizer(
            child: CarouselSlider.builder(
              itemCount: 6,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                    return BookCoverWidget(
                      imageUrl:
                          'http://books.google.com/books/content?id=SkJozQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                    );
                  },
              options: carouselOptions,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return FailureStateWidget(message: state.message,);
        } else {
          return Center(child: Text('Unexpected error'));
        }
      },
    );
  }
}
