import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_colors.dart';
import 'package:payments_integration/core/utiles/widgets/custom_button.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_success_header.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_success_invoice.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({
    super.key,
    required this.invoiceModel,
  });

  final InvoiceModel invoiceModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const PaymentHeader(),
                const SizedBox(
                  height: 24,
                ),
                PaymentSuccessInvoice(
                  invoiceModel: invoiceModel,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                children: [
                  const Spacer(),
                  CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    text: "Back to Home",
                    textColor: AppColors.primaryColor,
                    containerColor: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
