import 'package:bookly/features/home/presentation/screens/widgets/image_error_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/image_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
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
    );
  }
}
