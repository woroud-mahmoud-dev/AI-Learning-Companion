import 'package:flutter/material.dart';
import 'package:ai_learning_companion/core/routing/routing.dart';
import 'package:ai_learning_companion/core/theme/theme.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: 'AI Learning App',
      routerConfig: AppRouter.router,
    );
  }
}