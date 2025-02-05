import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card.dart';

class BookCoverList extends StatelessWidget {
  const BookCoverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: BookCoverCard(),
        ),
      ),
    );
  }
}
