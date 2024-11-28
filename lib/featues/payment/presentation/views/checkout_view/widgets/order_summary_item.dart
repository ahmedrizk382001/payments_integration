import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class OrderSummaryItem extends StatelessWidget {
  const OrderSummaryItem({
    super.key,
    required this.name,
    required this.value,
  });

  final String name, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: AppTextStyles.styleNunitoMedium16,
        ),
        const Spacer(),
        Text(
          value,
          style: AppTextStyles.styleNunitoMedium16.copyWith(
            color: AppColors.primaryColor.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
