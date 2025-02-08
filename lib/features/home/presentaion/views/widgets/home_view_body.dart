import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zzzbookly/core/utils/app_router.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card_list.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_item_list.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_search_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/widget_headline.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const BooklyAppBar(showBackArrow: false),
              const BooklySearchBar(),
              WidgetHeadline(
                title: 'Trending books',
                onSeeAll: () {
                  GoRouter.of(context).push(AppRouter.kFetchBooks);
                },
              ),
              const BookCoverList(),
              WidgetHeadline(
                title: 'My favourites',
                onSeeAll: () {
                  GoRouter.of(context).push(AppRouter.kFetchBooks);
                },
              ),
            ],
          ),
        ),
        const BookItemList(),
      ],
    );
  }
}
