import 'package:flutter/material.dart';

class BookCoverCard extends StatelessWidget {
  const BookCoverCard({
    super.key,
    this.imageUrl = "https://picsum.photos/200/300",
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
