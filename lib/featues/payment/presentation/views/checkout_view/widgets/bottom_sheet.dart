import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/payment_methods_list.dart';

Future<dynamic> bottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        decoration: _bottomSheetDecorations(),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Choose a payment method",
              style: AppTextStyles.stylePoppinsMedium16,
            ),
            Text(
              "to continue...",
              style: AppTextStyles.stylePoppinsMedium16,
            ),
            SizedBox(
              height: 25,
            ),
            PaymentMethodsList(),
          ],
        ),
      );
    },
  );
}

BoxDecoration _bottomSheetDecorations() {
  return const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, -1),
        spreadRadius: 1,
        blurRadius: 1,
      ),
    ],
  );
}
