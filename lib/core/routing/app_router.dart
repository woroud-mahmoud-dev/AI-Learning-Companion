import 'package:ai_learning_companion/features/onBoarding/presentation/screens/onBoarding_screen.dart';
import 'package:ai_learning_companion/core/routing/routes.dart';
import 'package:go_router/go_router.dart';

import '../../features/onBoarding/presentation/screens/splash_screen.dart';

class AppRouter {
   static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onBoarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      // Add more routes here
    ],
  );
}
