import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payments_integration/core/styles/app_colors.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 70,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: isSelected ? Colors.green : AppColors.primaryColor,
            spreadRadius: isSelected ? 3.5 : 1.5,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          image,
          width: 100,
        ),
      ),
    );
  }
}
