import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/paypal_transactions_input_model.dart';

class PaypalService extends StatelessWidget {
  const PaypalService(
      {super.key,
      required this.paypalClientId,
      required this.paypalSecretKey,
      required this.paypalTransactionsInputModel,
      required this.onSuccess});

  final String paypalClientId, paypalSecretKey;
  final PaypalTransactionsInputModel paypalTransactionsInputModel;
  final Function onSuccess;

  @override
  Widget build(BuildContext context) {
    return PaypalCheckoutView(
      sandboxMode: true,
      clientId: paypalClientId,
      secretKey: paypalSecretKey,
      transactions: [paypalTransactionsInputModel],
      note: "Contact us for any questions on your order.",
      onSuccess: onSuccess,
      onError: (error) {
        // Handle payment error
        log(error.toString());
        log("Payment is not done --------");
        Navigator.pop(context);
      },
      onCancel: () {
        // Handle payment cancellation
        // Implement the onSuccess, onError, and onCancel callbacks to handle the respective payment outcomes.
      },
    );
  }
}
