import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/item_counter.dart';

class ProductCardInfo extends StatelessWidget {
  const ProductCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nike Men’s Joyride",
          style: AppTextStyles.stylePoppinsMedium16,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "Run Flyknit shoes",
          style: AppTextStyles.styleNunitoMedium13,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        Row(
          children: [
            Text(
              r"$681",
              style: AppTextStyles.stylePoppinsMedium14,
            ),
            Spacer(),
            ItemCounter(),
            SizedBox(
              width: 15,
            ),
          ],
        )
      ],
    );
  }
}
