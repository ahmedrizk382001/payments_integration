import 'package:dartz/dartz.dart';
import 'package:payments_integration/core/utiles/failure/failure.dart';
import 'package:payments_integration/core/utiles/services/stripe_service.dart';
import 'package:payments_integration/featues/payment/data/models/order_model.dart';
import 'package:payments_integration/featues/payment/domain/repo/checkout_repo.dart';

class CheckoutRepoImp extends CheckoutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> createPayment(
      {required OrderModel orderModel}) async {
    try {
      await stripeService.createPayment(orderModel: orderModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
