import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/logo_svg.svg'),
          Spacer(),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSearchScreen);
            },
            child: SvgPicture.asset('assets/icons/search_icon.svg', width: 28),
          ),
        ],
      ),
    );
  }
}
