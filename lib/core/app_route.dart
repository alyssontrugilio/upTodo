import 'package:go_router/go_router.dart';

import '../presentation/presentation.dart';

class AppRoute {
  static String splash = '/splahs';
  static String onboardingFirst = '/onboarding_first';
  static String onboardingSecond = '/onboarding_second';
  static String onboardingThird = '/onboarding_third';

  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoute.onboardingFirst,
    routes: [
      GoRoute(
        path: AppRoute.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoute.onboardingFirst,
        builder: (context, state) => const OnboardingFirst(),
      ),
      GoRoute(
        path: AppRoute.onboardingSecond,
        builder: (context, state) => const OnboardingSecond(),
      ),
      GoRoute(
        path: AppRoute.onboardingThird,
        builder: (context, state) => const OnboardingThird(),
      )
    ],
  );
}
