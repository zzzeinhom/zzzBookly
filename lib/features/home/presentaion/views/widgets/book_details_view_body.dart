import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_cover_card_list.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_details_widgets.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_rate.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/widget_headline.dart';

class BookDetailsBody extends StatefulWidget {
  const BookDetailsBody({super.key});

  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    BooklyAppBar(
                      showBackArrow: true,
                      title: "",
                      icon: FontAwesomeIcons.cartShopping,
                    ),
                    SizedBox(height: 40),
                    BookHeaderContainer(),
                  ],
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabBarDelegate(
                  TabBar(
                    controller: _tabController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: Theme.of(context).colorScheme.primary,
                    unselectedLabelColor:
                        Theme.of(context).colorScheme.onSecondary,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Details'),
                    ],
                  ),
                ),
              ),
            ],
            body: TabBarView(
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
                      Text(lorem, style: Theme.of(context).textTheme.bodyLarge),
                      const SizedBox(height: 16),
                      Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1.5),
                      Text(
                        "You may also like",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
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
                      Text(lorem, style: Theme.of(context).textTheme.bodyLarge),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: _BottomButtons(context: context),
          ),
        ],
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarDelegate(this.tabBar);

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
  bool shouldRebuild(_TabBarDelegate oldDelegate) => false;
}

class _BottomButtons extends StatelessWidget {
  final BuildContext context;

  const _BottomButtons({required this.context});

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

class BookHeaderContainer extends StatelessWidget {
  const BookHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows overflow for the elevated card
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: MediaQuery.of(context).size.width,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Positioned(
          left: 30,
          top: -34,
          bottom: 20,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const BookCoverCard(),
          ),
        ),
        Positioned(
          top: 50,
          left: 180,
          right: 24,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BookName(),
                const SizedBox(height: 4),
                const AuthorName(),
                const SizedBox(height: 8),
                const ReleaseDate(),
                BookRate(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  iconSize: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

String lorem =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat hendrerit accumsan. Ut ultricies rhoncus ex sit amet tincidunt. Fusce quis sagittis justo, in sollicitudin metus. Pellentesque suscipit porta felis vitae pretium. Curabitur et magna non diam elementum vestibulum eu nec tellus. Vestibulum viverra ornare risus, ac blandit nibh gravida nec. Integer vulputate nisi sed ex luctus euismod. Etiam vitae condimentum nisi. Morbi et rhoncus ex. Vivamus quis dapibus leo, et tincidunt felis. Proin sagittis molestie orci, at sagittis dolor ultrices ac. Etiam mattis leo sed orci scelerisque elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec aliquet malesuada tempor. Sed vulputate fringilla lectus, eu volutpat felis pulvinar sit amet. Ut tempor metus id sem auctor, quis mollis nisi placerat. Sed tempor non tellus vel varius. Donec condimentum, sem nec sollicitudin faucibus, metus nunc luctus risus, vitae pharetra ligula velit ut libero. Sed dictum eleifend nunc, et porta lectus venenatis vitae. Sed venenatis tristique metus, sed vulputate erat imperdiet vel. Fusce mattis porttitor est in malesuada. Suspendisse iaculis vehicula diam nec luctus.";
