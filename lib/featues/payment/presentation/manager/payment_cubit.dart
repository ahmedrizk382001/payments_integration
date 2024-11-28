import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_integration/featues/payment/data/models/order_model.dart';
import 'package:payments_integration/featues/payment/domain/repo/checkout_repo.dart';
import 'package:payments_integration/featues/payment/presentation/manager/payment_states.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit({required this.checkoutRepo}) : super(PaymentInitialState());

  static PaymentCubit get(BuildContext context) =>
      BlocProvider.of<PaymentCubit>(context);

  final CheckoutRepo checkoutRepo;

  Future<void> makePayment({required OrderModel orderModel}) async {
    emit(PaymentLoadingState());
    var response = await checkoutRepo.createPayment(orderModel: orderModel);

    response.fold((failure) => emit(PaymentErrorState(errMsg: failure.errMsg)),
        (success) => emit(PaymentSuccessState()));
  }
}
