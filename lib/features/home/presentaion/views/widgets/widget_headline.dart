import 'package:flutter/material.dart';

class WidgetHeadline extends StatelessWidget {
  const WidgetHeadline(
      {super.key, required this.title, required this.onSeeAll});

  final String title;
  final Function() onSeeAll;

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
        TextButton(
            onPressed: onSeeAll,
            child: Text(
              "See all",
              style: Theme.of(context).textTheme.titleSmall,
            )),
      ],
    );
  }
}
