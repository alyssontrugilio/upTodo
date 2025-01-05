import 'package:go_router/go_router.dart';

import '../presentation/presentation.dart';

class AppRoute {
  static String splash = '/splahs';
  static String onboardingFirst = '/onboarding_first';
  static String onboardingSecond = '/onboarding_second';
  static String onboardingThird = '/onboarding_third';

  static String startScreen = '/start_screen';
  static String signUp = '/sign-up';

  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoute.signUp,
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
      ),
      GoRoute(
        path: AppRoute.startScreen,
        builder: (context, state) => const StartScreenPage(),
      ),
      GoRoute(
        path: AppRoute.signUp,
        builder: (context, state) => const SignUpPage(),
      ),
    ],
  );
}
