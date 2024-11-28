import 'package:flutter/material.dart';
import 'package:payments_integration/core/utiles/widgets/custom_button.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/address_info.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/bottom_sheet.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/offers.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/order_summary.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/product_card.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          const ProductCard(),
          const SizedBox(
            height: 22.5,
          ),
          const Offers(),
          const SizedBox(
            height: 22.5,
          ),
          const OrderSummary(),
          const SizedBox(
            height: 22.5,
          ),
          const AddressInfo(),
          const Spacer(),
          CustomButton(
            text: "Check Out",
            onTap: () {
              bottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}
