import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_success_view_body.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key, required this.invoiceModel});

  final InvoiceModel invoiceModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: PaymentSuccessViewBody(
        invoiceModel: invoiceModel,
      ),
    );
  }
}
