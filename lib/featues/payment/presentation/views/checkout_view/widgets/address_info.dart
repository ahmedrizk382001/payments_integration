import 'dart:math';

import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/custom%20container.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return customContainer(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Text(
              "Address",
              style: AppTextStyles.stylePoppinsMedium16,
            ),
            const Spacer(),
            Text(
              "TD53, Kaya...",
              style: AppTextStyles.stylePoppinsMedium14.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7),
              ),
            ),
            Transform.rotate(
              angle: -pi / 2,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 14,
                color: AppColors.secondaryColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
