import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_details_buttons.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_app_bar.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/bookly_tabbar.dart';

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
                    // BookHeaderContainer(),
                  ],
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TabBarDelegate(
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
            body: BooklyTabBarView(
              tabController: _tabController,
              overview: lorem,
              details: lorem,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: BottomButtons(context: context),
          ),
        ],
      ),
    );
  }
}

String lorem =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat hendrerit accumsan. Ut ultricies rhoncus ex sit amet tincidunt. Fusce quis sagittis justo, in sollicitudin metus. Pellentesque suscipit porta felis vitae pretium. Curabitur et magna non diam elementum vestibulum eu nec tellus. Vestibulum viverra ornare risus, ac blandit nibh gravida nec. Integer vulputate nisi sed ex luctus euismod. Etiam vitae condimentum nisi. Morbi et rhoncus ex. Vivamus quis dapibus leo, et tincidunt felis. Proin sagittis molestie orci, at sagittis dolor ultrices ac. Etiam mattis leo sed orci scelerisque elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec aliquet malesuada tempor. Sed vulputate fringilla lectus, eu volutpat felis pulvinar sit amet. Ut tempor metus id sem auctor, quis mollis nisi placerat. Sed tempor non tellus vel varius. Donec condimentum, sem nec sollicitudin faucibus, metus nunc luctus risus, vitae pharetra ligula velit ut libero. Sed dictum eleifend nunc, et porta lectus venenatis vitae. Sed venenatis tristique metus, sed vulputate erat imperdiet vel. Fusce mattis porttitor est in malesuada. Suspendisse iaculis vehicula diam nec luctus.";
