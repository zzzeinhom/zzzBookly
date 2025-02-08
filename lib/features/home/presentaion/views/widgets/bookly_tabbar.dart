import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card_list.dart';

class BooklyTabBarView extends StatelessWidget {
  const BooklyTabBarView({
    super.key,
    required TabController tabController,
    required this.overview,
    required this.details,
  }) : _tabController = tabController;

  final TabController _tabController;
  final String overview;
  final String details;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Book",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Text(overview, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 16),
              Divider(
                  color: Theme.of(context).colorScheme.tertiary,
                  thickness: 1.5,
                  height: 40),
              Text(
                "You may also like",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              const BookCoverList(
                height: 200,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(details, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  TabBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(TabBarDelegate oldDelegate) => false;
}
