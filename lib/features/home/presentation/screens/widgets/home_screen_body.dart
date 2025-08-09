import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/screens/widgets/featured_items_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                CustomAppBar(),
                SizedBox(height: 40),
                FeaturedItemsSlider(),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Newest Books', style: Styles.semiBold18),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: NewestBooksListView()),
      ],
    );
  }
}
