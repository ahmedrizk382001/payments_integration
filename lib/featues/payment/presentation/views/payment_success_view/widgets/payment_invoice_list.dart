import 'package:flutter/material.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/widgets/payment_invoice_item.dart';

class PaymentInvoiceList extends StatelessWidget {
  const PaymentInvoiceList({
    super.key,
    required this.invoiceModel,
  });

  final InvoiceModel invoiceModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PaymentInvoiceItem(
            name: "References Number", value: "000085752257"),
        const SizedBox(
          height: 14,
        ),
        PaymentInvoiceItem(name: "Date", value: invoiceModel.date),
        const SizedBox(
          height: 14,
        ),
        PaymentInvoiceItem(name: "Time", value: invoiceModel.time),
        const SizedBox(
          height: 14,
        ),
        PaymentInvoiceItem(
            name: "Payment Method", value: invoiceModel.paymentMethod),
        const SizedBox(
          height: 32,
        ),
        PaymentInvoiceItem(
          name: "Amount",
          value: r"$" + invoiceModel.amount,
          isAmount: true,
        ),
      ],
    );
  }
}
