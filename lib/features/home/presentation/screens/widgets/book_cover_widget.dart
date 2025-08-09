import 'package:bookly/features/home/presentation/screens/widgets/image_error_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/image_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookCoverWidget extends StatelessWidget {
  BookCoverWidget({super.key, required this.imageUrl, this.onTap});
  final String imageUrl;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          progressIndicatorBuilder: (context, url, progress) {
            return ImageLoadingWidget();
          },
          errorWidget: (context, url, error) {
            return ImageErrorWidget();
          },
        ),
      ),
    );
  }
}
