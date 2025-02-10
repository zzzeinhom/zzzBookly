import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zzzbookly/core/utils/service_locator.dart';
import 'package:zzzbookly/features/fetch_books/presentation/views/search_books_view.dart';
import 'package:zzzbookly/features/home/data/models/book_model/book_model.dart';
import 'package:zzzbookly/features/home/data/repos/home_repo_impl.dart';
import 'package:zzzbookly/features/home/presentaion/managers/search_books_cubit/search_books_cubit.dart';
import 'package:zzzbookly/features/home/presentaion/views/book_details_view.dart';
import 'package:zzzbookly/features/home/presentaion/views/home_view.dart';
import 'package:zzzbookly/features/splash/presentation/views/splash_view.dart';


abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchBooks = '/searchBooks';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) =>
              BookDetails(
                bookModel: state.extra as BookModel,
              )),
      GoRoute(
          path: kSearchBooks,
          builder: (context, state) =>
              BlocProvider(
                create: (context) => SearchBooksCubit(getIt.get<HomeRepoImpl>())..searchForBooks(state.extra as String),
                child: SearchBooksView(query: state.extra as String,),
              )),
    ],
  );
}
