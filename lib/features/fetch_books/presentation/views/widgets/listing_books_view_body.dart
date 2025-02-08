import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_item_list.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_search_bar.dart';

class ListingBooksViewBody extends StatelessWidget {
  const ListingBooksViewBody({super.key, this.search = false});

  final bool search;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const BooklyAppBar(
                showBackArrow: true,
                title: "",
              ),
              if (search) const BooklySearchBar(),
            ],
          ),
        ),
        const BookItemList(),
      ],
    );
  }
}
