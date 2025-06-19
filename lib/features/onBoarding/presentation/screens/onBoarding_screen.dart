import 'package:ai_learning_companion/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/di/service_locator.dart';
import '../cubit/on_boarding_cubit.dart';
import '../cubit/onboarding_state.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<OnboardingCubit>(),
      child: const OnBoardingContent(),
    );
  }
}

class OnBoardingContent extends StatefulWidget {
  const OnBoardingContent({super.key});

  @override
  State<OnBoardingContent> createState() => _OnBoardingContentState();
}

class _OnBoardingContentState extends State<OnBoardingContent> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<OnboardingCubit>();
    final items = cubit.onboardingItems;

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<OnboardingCubit, OnboardingState>(
          listener: (_, state) {},
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => context.go(AppRoutes.signIn),
                      child: const Text("Skip"),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: items.length,
                      onPageChanged: cubit.setPage,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Lottie.asset(
                              item.imageUrl,
                              height: MediaQuery.of(context).size.height * 0.4,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              item.title,
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.description,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(items.length, (dotIndex) {
                                final isActive =
                                    dotIndex == cubit.state.currentIndex;
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  width: isActive ? 12 : 8,
                                  height: isActive ? 12 : 8,
                                  decoration: BoxDecoration(
                                    color:
                                        isActive
                                            ? Colors.blue
                                            : Colors.grey[400],
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      if (cubit.state.currentIndex < items.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        context.go(AppRoutes.signIn);
                      }
                    },
                    child: Text(
                      cubit.state.currentIndex < items.length - 1
                          ? 'Next'
                          : 'Get Started',
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
