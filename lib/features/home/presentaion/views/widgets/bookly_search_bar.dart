import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooklySearchBar extends StatefulWidget {
  const BooklySearchBar({super.key});

  @override
  State<BooklySearchBar> createState() => _BooklySearchBarState();
}

class _BooklySearchBarState extends State<BooklySearchBar> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: Theme.of(context).textTheme.bodyLarge,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              onSubmitted: (value) {},
              decoration: InputDecoration(
                hintText: "Search your books",
                hintStyle: Theme.of(context).textTheme.labelLarge,
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(64, 0, 0, 0),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ]),
              child: IconButton(
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                color: Theme.of(context).colorScheme.onSecondary,
                onPressed: () {},
                iconSize: 32,
              )),
        ],
      ),
    );
  }
}
