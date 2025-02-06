
import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_details_widgets.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_rate.dart';

class BookHeaderContainer extends StatelessWidget {
  const BookHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows overflow for the elevated card
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: MediaQuery.of(context).size.width,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Positioned(
          left: 30,
          top: -34,
          bottom: 20,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const BookCoverCard(),
          ),
        ),
        Positioned(
          top: 50,
          left: 180,
          right: 24,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BookName(),
                const SizedBox(height: 4),
                const AuthorName(),
                const SizedBox(height: 8),
                const ReleaseDate(),
                BookRate(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  iconSize: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}