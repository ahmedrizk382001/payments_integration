import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.remove_circle,
          color: AppColors.secondaryColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "1",
          style: AppTextStyles.stylePoppinsMedium14,
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.add_circle,
          color: AppColors.secondaryColor,
        ),
      ],
    );
  }
}
