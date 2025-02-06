import 'package:go_router/go_router.dart';
import 'package:zzzbookly/features/home/presentaion/views/home_view.dart';
import 'package:zzzbookly/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    ],
  );
}
