import 'package:flutter/material.dart';
import 'package:zzzbookly/features/fetch_books/presentation/views/widgets/search_books_view_body.dart';

class SearchBooksView extends StatelessWidget {
  const SearchBooksView({super.key, this.query});

  final String? query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBooksViewBody(query: query,),
    );
  }
}
