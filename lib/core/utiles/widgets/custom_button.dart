import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.textColor,
      this.containerColor,
      this.onTap});

  final String text;
  final Color? textColor, containerColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: containerColor ?? AppColors.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.stylePoppinsSemibold14.copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
