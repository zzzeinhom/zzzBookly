import 'package:flutter/material.dart';
import 'package:zzzbookly/consts/data.dart';

class BookCoverCard extends StatelessWidget {
  const BookCoverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsData.test_cover), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
