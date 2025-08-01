import 'package:bookly/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/';
  static const kBookDetailsScreen = '/BookDetailsScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kHomeScreen, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => BookDetailsScreen(),
      ),
    ],
  );
}
