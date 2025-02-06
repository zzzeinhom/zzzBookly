import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:zzzbookly/core/utils/app_router.dart';
import 'package:zzzbookly/core/utils/data.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    // Start animation after build completes
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Constrained Image with Max Size
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500, // Set maximum width
                maxHeight: 500, // Set maximum height
              ),
              child: const Image(image: AssetImage(AssetsData.splash)),
            ),
          ),

          // Animated Text and Button
          SlideTransition(
            position: _slideAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Column(
                children: [
                  Text(
                    "Keep reading,",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "You 'll fall in love",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Text(
                    "A library of bite-size bussiness eBooks on soft skills",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "and personal development by industy-leading",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "experts through just one subscription",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  FloatingActionButton(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kHomeView);
                    },
                    shape: const StadiumBorder(),
                    child: const Icon(Icons.arrow_forward_rounded),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
