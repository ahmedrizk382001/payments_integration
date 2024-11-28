class InvoiceModel {
  final String time;
  final String date;
  final String paymentMethod;
  final String amount;

  InvoiceModel(
      {required this.time,
      required this.date,
      required this.paymentMethod,
      required this.amount});
}
