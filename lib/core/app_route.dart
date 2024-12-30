import 'package:go_router/go_router.dart';

import '../presentation/presentation.dart';

class AppRoute {
  static String splash = '/splahs';
  static String onboardingOne = '/onboarding_one';
  static String onboardingSecond = '/onboarding_second';

  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoute.onboardingSecond,
    routes: [
      GoRoute(
        path: AppRoute.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoute.onboardingOne,
        builder: (context, state) => const OnboardingOne(),
      ),
      GoRoute(
        path: AppRoute.onboardingSecond,
        builder: (context, state) => const OnboardingSecond(),
      )
    ],
  );
}
