import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zzzbookly/features/home/presentaion/managers/search_books_cubit/search_books_cubit.dart';
import 'package:zzzbookly/features/home/presentaion/managers/search_books_cubit/search_books_state.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_item.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_item_list.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_search_bar.dart';

class SearchBooksViewBody extends StatelessWidget {
  const SearchBooksViewBody({super.key, this.query});

  final String? query;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              BooklyAppBar(
                showBackArrow: true,
                title: "",
              ),
              BooklySearchBar(),
            ],
          ),
        ),
    if (query == null || query!.trim().isEmpty) const BookItemList(),
    if (query != null || query!.trim().isNotEmpty)  BlocBuilder<SearchBooksCubit, SearchBooksState>(
    builder: (context, state) {
    if (state is SearchBooksSuccess) {
    return SliverList.builder(
    itemBuilder: (context, index) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: BookItem(bookModel: state.searchBooks[index],
    )),
    itemCount: state.searchBooks.length,
    );
    } else if (state is SearchBooksFailure) {
    return SliverToBoxAdapter(
    child: Center(
    child: Text(state.errMessage,
    style: Theme.of(context).textTheme.titleLarge),
    ),
    );
    } else if (state is SearchBooksLoading) {
    return const SliverToBoxAdapter(
    child: Center(
    child: CircularProgressIndicator(),
    ),
    );
    }
    return const SliverToBoxAdapter(
    child: Center(
    child: Text("Something went wrong"),
    ),
    );
    },
    )
      ],
    );
  }
}
