import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CircleAvatar(
            radius: 18.5,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.clear,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 18.5,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.primaryColor,
            child: Icon(
              Icons.file_upload_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
