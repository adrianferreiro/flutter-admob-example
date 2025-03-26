import 'package:go_router/go_router.dart';
import 'package:test_admob/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
         
        ]),
  ],
);
