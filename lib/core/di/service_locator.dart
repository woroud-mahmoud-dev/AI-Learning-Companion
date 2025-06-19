

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/onBoarding/di/on_boarding_di.dart';

final sl = GetIt.instance;

Future<void> init() async {
  
  // 🔧 CORE DEPENDENCIES
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
  await initOnboardingDI();
 
}
