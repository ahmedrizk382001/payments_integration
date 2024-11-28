import 'package:flutter/material.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/custom%20container.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/product_card_info.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return customContainer(
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 80,
            child: Image.asset("assets/images/photo.png"),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: SizedBox(
              height: 80,
              child: ProductCardInfo(),
            ),
          )
        ],
      ),
    );
  }
}
