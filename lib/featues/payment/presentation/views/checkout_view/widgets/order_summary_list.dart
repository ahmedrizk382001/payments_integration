import 'package:flutter/material.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/order_summary_item.dart';

class OrderSummaryList extends StatelessWidget {
  const OrderSummaryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderSummaryItem(
          name: "Order",
          value: r"$681",
        ),
        SizedBox(
          height: 8,
        ),
        OrderSummaryItem(
          name: "Delivery",
          value: r"$6",
        ),
        SizedBox(
          height: 8,
        ),
        OrderSummaryItem(
          name: "Total",
          value: r"$687",
        ),
      ],
    );
  }
}
