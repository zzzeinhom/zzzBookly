import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final BuildContext context;

  const BottomButtons({required this.context});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: _buttonStyle(
              context,
              left: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: _buttonStyle(
              context,
              right: 16,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            onPressed: () {},
            child: Text(
              "Free Preview",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ),
      ],
    );
  }

  ButtonStyle _buttonStyle(BuildContext context,
      {double? left, double? right, required Color color}) {
    return TextButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(left != null ? 16 : 0),
          bottomLeft: Radius.circular(left != null ? 16 : 0),
          topRight: Radius.circular(right != null ? 16 : 0),
          bottomRight: Radius.circular(right != null ? 16 : 0),
        ),
      ),
      minimumSize: const Size(0, 48),
    );
  }
}