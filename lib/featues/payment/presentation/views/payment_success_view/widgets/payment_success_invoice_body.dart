import 'package:flutter/material.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/custom_dash_line.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_invoice_list.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_success_first_section.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/pdf_receipt_button.dart';

class PaymentSuccessInvoiceBody extends StatelessWidget {
  const PaymentSuccessInvoiceBody({
    super.key,
    required this.invoiceModel,
  });

  final InvoiceModel invoiceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: [
          const PaymentSuccessFirstSection(),
          const SizedBox(
            height: 32,
          ),
          const CustomDashLine(),
          const SizedBox(
            height: 32,
          ),
          PaymentInvoiceList(invoiceModel: invoiceModel),
          const Divider(
            thickness: 1,
            color: Colors.black26,
            height: 64,
          ),
          const PDFReceiptButton()
        ],
      ),
    );
  }
}
