import 'package:ai_learning_companion/core/theme/theme.dart';
import 'package:ai_learning_companion/core/utils/utils.dart' show AppStyle;
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
  });
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          style: AppStyle.style14Bold(
            context,
          ).copyWith(color: Colors.black87),
          validator: validator,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.fillBackground,
            hintText: hintText,
            hintStyle: AppStyle.style14(
              context,
            ).copyWith(color: Colors.grey.shade600),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
