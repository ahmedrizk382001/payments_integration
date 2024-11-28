import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

class PDFReceiptButton extends StatelessWidget {
  const PDFReceiptButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondaryColor,
                offset: Offset(0, 0),
                spreadRadius: 0.3,
              )
            ]),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.file_download_outlined,
              color: AppColors.secondaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Get PDF Receipt",
              style: AppTextStyles.stylePoppinsMedium14,
            )
          ],
        ),
      ),
    );
  }
}
