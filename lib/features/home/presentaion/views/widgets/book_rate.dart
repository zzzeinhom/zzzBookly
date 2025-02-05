import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.amber,
        size: 16,
      ),
      const SizedBox(width: 4),
      Text(
        '4.8',
        style: Theme.of(context).textTheme.labelMedium,
      ),
      const SizedBox(width: 4),
      Text(
        '(24589)',
        style: Theme.of(context).textTheme.labelMedium,
      ),
    ]);
  }
}
