import 'package:flutter/material.dart';
import 'package:zzzbookly/features/fetch_books/presentation/views/widgets/listing_books_view_body.dart';

class ListingBooksView extends StatelessWidget {
  const ListingBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListingBooksViewBody(),
    );
  }
}
