import 'package:flutter/material.dart';
import 'package:zzzbookly/consts/data.dart';

class BookCoverCard extends StatelessWidget {
  const BookCoverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.test_cover), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
