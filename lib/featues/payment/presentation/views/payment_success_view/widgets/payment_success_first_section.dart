import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class PaymentSuccessFirstSection extends StatelessWidget {
  const PaymentSuccessFirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.green.withOpacity(0.12),
          child: const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Payment Success!",
          style: AppTextStyles.stylePoppinsSemibold20,
        ),
      ],
    );
  }
}
