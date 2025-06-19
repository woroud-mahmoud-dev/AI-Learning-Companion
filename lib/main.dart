import 'package:ai_learning_companion/app.dart';
import 'package:ai_learning_companion/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Initialize service locator
  await init();
  await dotenv.load(); // Load .env

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (_, __) => const MyApp(),
    ),
  );
}
