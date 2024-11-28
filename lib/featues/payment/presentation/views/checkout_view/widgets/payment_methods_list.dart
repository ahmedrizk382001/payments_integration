import 'package:flutter/material.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/continue_button.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/payment_item.dart';

class PaymentMethodsList extends StatefulWidget {
  const PaymentMethodsList({
    super.key,
  });

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            paymentMethods.length,
            (index) {
              return InkWell(
                onTap: () {
                  isSelectedIndex = index;
                  setState(() {});
                },
                child: PaymentItem(
                  image: paymentMethods[index],
                  isSelected: isSelectedIndex == index,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        ContinueButton(selectedIndex: isSelectedIndex),
      ],
    );
  }
}

List<String> paymentMethods = [
  "assets/images/card.svg",
  "assets/images/paypal.svg"
];
