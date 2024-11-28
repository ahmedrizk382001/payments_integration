import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_success_invoice_body.dart';

class PaymentSuccessInvoice extends StatelessWidget {
  const PaymentSuccessInvoice({super.key, required this.invoiceModel});

  final InvoiceModel invoiceModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        PaymentSuccessInvoiceBody(invoiceModel: invoiceModel),
        const Positioned(
          top: 154,
          left: -10,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        const Positioned(
          top: 154,
          right: -10,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
