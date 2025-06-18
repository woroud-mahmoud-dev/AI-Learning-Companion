import 'package:ai_learning_companion/app.dart';
import 'package:ai_learning_companion/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Initialize service locator
  await init();

  runApp(const MyApp());
}
