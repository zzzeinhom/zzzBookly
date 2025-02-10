import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCoverCard extends StatelessWidget {
  const BookCoverCard({
    super.key, required this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl ?? "",
              fit: BoxFit.cover,
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline, size: 40),
            )),
      ),
    );
  }
}
