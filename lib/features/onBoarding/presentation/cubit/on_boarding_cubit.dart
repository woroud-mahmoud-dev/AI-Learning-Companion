import 'package:ai_learning_companion/core/constants/app_images.dart';
import 'package:ai_learning_companion/features/onBoarding/domain/models/onboarding_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(currentIndex: 0));
  List<OnboardingModel> onboardingItems = [
    OnboardingModel(
      title: 'Learn Smarter with AI',
      description:
          'Get instant explanations for complex school and university topics — from math to science — all in simple language.',
      imageUrl: AppImages.onBoarding1,
    ),
    OnboardingModel(
      title: 'Your Personal Tutor 24/7',
      description:
          'Ask questions anytime, in Arabic or English, and get clear answers tailored to your level and pace.',
      imageUrl: AppImages.onBoarding2,
    ),
    OnboardingModel(
      title: 'Start Your Learning Journey 🚀',
      description:
          'Boost your understanding, improve your grades, and enjoy learning like never before — powered by AI.',
      imageUrl: AppImages.onBoarding3,
    ),
  ];

  void nextPage() {
    if (state.currentIndex < 2) {
      emit(OnboardingState(currentIndex: state.currentIndex + 1));
    }
  }

  void skipToLast() {
    emit(OnboardingState(currentIndex: 2));
  }

  void setPage(int index) {
    emit(OnboardingState(currentIndex: index));
  }
}
