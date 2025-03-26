import 'package:go_router/go_router.dart';
import 'package:test_admob/home_screen.dart';
import 'package:test_admob/banner/banner_example.dart';
import 'package:test_admob/interstitial/interstitial_example.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: BannerExample.path,
          name: BannerExample.name,
          builder: (context, state) {
            return BannerExample();
          },
        ),
        GoRoute(
          path: InterstitialExample.path,
          name: InterstitialExample.name,
          builder: (context, state) {
            return InterstitialExample();
          },
        ),
      ],
    ),
  ],
);
