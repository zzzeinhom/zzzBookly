import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooklyAppBar extends StatelessWidget {
  const BooklyAppBar({
    super.key,
    this.title = 'Keep exploring',
    this.icon = Icons.person_2_outlined,
    this.onPressed,
    this.showBackArrow = false,
  });

  final String title;
  final IconData icon;
  final Function()? onPressed;
  final bool showBackArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Row(
        children: [
          if (showBackArrow)
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Theme.of(context).colorScheme.onSecondary,
              onPressed: () => Navigator.pop(context),
              iconSize: 32,
            ),
          if (!showBackArrow)
            IconButton(
              icon: const Icon(FontAwesomeIcons.bars),
              color: Theme.of(context).colorScheme.onSecondary,
              onPressed: () {
                return Scaffold.of(context).openDrawer();
              },
              iconSize: 24,
            ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: Icon(icon),
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: onPressed,
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
