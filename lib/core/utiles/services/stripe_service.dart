import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payments_integration/core/utiles/constants/app_keys.dart';
import 'package:payments_integration/core/utiles/constants/end_points.dart';
import 'package:payments_integration/core/utiles/services/dio_helper.dart';
import 'package:payments_integration/featues/payment/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payments_integration/featues/payment/data/models/order_model.dart';
import 'package:payments_integration/featues/payment/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:payments_integration/featues/payment/data/models/payment_sheet_input_model.dart';

class StripeService {
  DioHelper dioHelper = DioHelper();

  // 1. create payment intent on the server
  Future<PaymentIntentModel> paymentIntent(
      {required OrderModel orderModel}) async {
    var response = await dioHelper.push(
        url: EndPoints.paymentIntentEndPoint,
        headers: {
          'Authorization': "Bearer ${AppKeys.stripeSecretKey}",
          'Content-Type': Headers.formUrlEncodedContentType
        },
        body: orderModel.toJSON());

    var paymentIntent = PaymentIntentModel.fromJson(response.data);

    return paymentIntent;
  }

  // 2. create ephemeralKey
  Future<EphemeralKeyModel> createEphemeralKey({required customerId}) async {
    var response = await dioHelper.push(
      url: EndPoints.ephemeralKeyEndPoint,
      body: {"customer": customerId},
      headers: {
        'Authorization': "Bearer ${AppKeys.stripeSecretKey}",
        'Content-Type': Headers.formUrlEncodedContentType,
        'Stripe-Version': "2024-11-20.acacia",
      },
    );

    var ephemeralKeyResponse = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyResponse;
  }

  // 3. initialize the payment sheet
  Future<void> initPaymentSheet(
      {required PaymentSheetInputModel paymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Main params
        merchantDisplayName: 'Ahmed Rizk',
        paymentIntentClientSecret: paymentSheetInputModel.clientSecret,
        // Customer keys
        customerEphemeralKeySecret:
            paymentSheetInputModel.customerEphemeralKeySecret,
        customerId: paymentSheetInputModel.customerId,
      ),
    );
  }

  Future<void> showPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> createPayment({required OrderModel orderModel}) async {
    var paymentIntentResponse = await paymentIntent(orderModel: orderModel);
    var ephemeralKeyResponse =
        await createEphemeralKey(customerId: AppKeys.testCustomerId);

    print(ephemeralKeyResponse.secret);

    var paymentSheetInputModel = PaymentSheetInputModel(
        clientSecret: paymentIntentResponse.clientSecret!,
        customerId: AppKeys.testCustomerId,
        customerEphemeralKeySecret: ephemeralKeyResponse.secret!);

    await initPaymentSheet(paymentSheetInputModel: paymentSheetInputModel);
    await showPaymentSheet();
  }
}
