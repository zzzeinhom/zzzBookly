import 'package:flutter/material.dart';
import 'package:zzzbookly/consts/data.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BooklyAppBar(showBackArrow: false),
          BooklySearchBar(),
          BookCoverCard(),
        ],
      ),
    );
  }
}
