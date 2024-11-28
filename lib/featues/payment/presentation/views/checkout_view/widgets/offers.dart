import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/custom%20container.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return customContainer(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Offers",
            style: AppTextStyles.stylePoppinsMedium16,
          ),
          const Spacer(),
          Text(
            "Add code",
            style: AppTextStyles.stylePoppinsMedium16
                .copyWith(color: AppColors.primaryColor.withOpacity(0.7)),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ));
  }
}
