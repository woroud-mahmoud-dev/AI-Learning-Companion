// lib/features/onboarding/di/onboarding_di.dart
import 'package:get_it/get_it.dart';
import '../presentation/cubit/on_boarding_cubit.dart';

final sl = GetIt.instance;

Future<void> initOnboardingDI() async {
  sl.registerFactory(() => OnboardingCubit());
}
