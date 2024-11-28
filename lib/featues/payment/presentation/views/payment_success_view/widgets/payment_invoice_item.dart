import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class PaymentInvoiceItem extends StatelessWidget {
  const PaymentInvoiceItem({
    super.key,
    required this.name,
    required this.value,
    this.isAmount = false,
  });

  final String name, value;
  final bool isAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: AppTextStyles.styleNunitoMedium13,
        ),
        const Spacer(),
        Text(
          value,
          style: AppTextStyles.styleNunitoMedium13.copyWith(
              color: AppColors.primaryColor.withOpacity(0.7),
              fontSize: isAmount ? 16 : 13,
              fontWeight: isAmount ? FontWeight.w800 : FontWeight.w500),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
