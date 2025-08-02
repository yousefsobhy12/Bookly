import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_item.dart';
import 'package:bookly/features/search/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 20),
          Text('Search Result', style: Styles.bold20),
          SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return BestSellerItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
