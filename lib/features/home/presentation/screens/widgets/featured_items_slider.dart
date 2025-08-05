import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_cover_widget.dart';
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
            itemCount: 6,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
                  return BookCoverWidget();
                },
            options: carouselOptions,
          );
        } else if (state is FeaturedBooksLoading) {
          return Skeletonizer(
            child: CarouselSlider.builder(
              itemCount: 6,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                    return BookCoverWidget();
                  },
              options: carouselOptions,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Text('Unexpected error'));
        }
      },
    );
  }
}
