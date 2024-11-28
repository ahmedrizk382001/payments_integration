import 'package:dartz/dartz.dart';
import 'package:payments_integration/core/utiles/failure/failure.dart';
import 'package:payments_integration/featues/payment/data/models/order_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> createPayment({required OrderModel orderModel});
}
