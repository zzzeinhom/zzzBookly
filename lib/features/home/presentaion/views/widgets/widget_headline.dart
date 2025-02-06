import 'package:flutter/material.dart';

class WidgetHeadline extends StatelessWidget {
  const WidgetHeadline(
      {super.key,
      required this.title,
      required this.onSeeAll,
      this.hasSeeAll = true});

  final String title;
  final Function() onSeeAll;
  final bool hasSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        if (hasSeeAll)
          TextButton(
            onPressed: onSeeAll,
            child: Text(
              "See All",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
      ],
    );
  }
}
