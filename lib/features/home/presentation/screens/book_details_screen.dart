import 'package:bookly/features/home/presentation/widgets/book_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close_rounded),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: SvgPicture.asset('assets/icons/shopping_cart.svg'),
            ),
          ),
        ],
      ),
      body: BookDetailsScreenBody(),
    );
  }
}
