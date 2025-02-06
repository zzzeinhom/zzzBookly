import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_rate.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            const BoxShadow(
              color: Color.fromARGB(30, 0, 0, 0),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ]),
      child: Row(children: [
        const BookCoverCard(),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'PRINCESS FREEDOM',
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'By GRIGORII ARCHEMBALD',
                    style: Theme.of(context).textTheme.labelMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$10.99',
                    style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const BookRate()
                  ],
                )
              ]),
        )
      ]),
    );
  }
}
