class OrderModel {
  final String currency;
  final String amount;
  final String customer;

  OrderModel(
      {required this.amount, required this.currency, required this.customer});

  Map<String, dynamic> toJSON() => {
        "amount": "${amount}00",
        "currency": currency,
        "customer": customer,
      };
}
