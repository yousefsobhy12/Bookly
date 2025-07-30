import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/widgets/featured_items_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          CustomAppBar(),
          FeaturedItemsSlider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [Text('Best Seller', style: Styles.semiBold18)],
            ),
          ),
        ],
      ),
    );
  }
}
