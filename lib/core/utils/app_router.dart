import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:bookly/features/search/presentation/screens/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/';
  static const kBookDetailsScreen = '/BookDetailsScreen';
  static const kSearchScreen = '/SearchScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kHomeScreen, builder: (context, state) => HomeScreen()),
      GoRoute(path: kSearchScreen, builder: (context, state) => SearchScreen()),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsScreen(bookModel: state.extra as BookModel),
        ),
      ),
    ],
  );
}
