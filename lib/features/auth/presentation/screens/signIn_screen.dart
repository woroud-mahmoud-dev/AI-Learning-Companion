import 'package:ai_learning_companion/core/constants/app_images.dart';
import 'package:ai_learning_companion/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LottieBuilder.asset(
                AppImages.onBoarding1,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
              Text(
                'Sign In to your account',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 20.h),
              AuthTextField(
                hintText: 'Enter your email',
                controller: _emailController,
              ),
              SizedBox(height: 20.h),
              AuthTextField(
                hintText: 'Enter your password',
                controller: _passwordController,
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle sign in logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Signing in...')),
                    );
                  }
                },
                child: const Text('Sign In'),
              ),
              SizedBox(height: 20.h),
              Text(
                "Or Sign In with",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle sign in logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Signing in...')),
                    );
                  }
                },
                child: const Text('Google Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
