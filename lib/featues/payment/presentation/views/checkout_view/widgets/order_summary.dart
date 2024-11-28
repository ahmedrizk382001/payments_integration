import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/custom%20container.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/order_summary_list.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return customContainer(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order Summary",
            style: AppTextStyles.stylePoppinsMedium16,
          ),
          Divider(
            color: AppColors.primaryColor.withOpacity(0.7),
            height: 20,
            thickness: 0.5,
          ),
          const OrderSummaryList(),
        ],
      ),
    ));
  }
}
