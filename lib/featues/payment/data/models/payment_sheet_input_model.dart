class PaymentSheetInputModel {
  final String clientSecret, customerId, customerEphemeralKeySecret;

  PaymentSheetInputModel(
      {required this.clientSecret,
      required this.customerId,
      required this.customerEphemeralKeySecret});
}
