abstract class PaymentStates {}

class PaymentInitialState extends PaymentStates {}

class PaymentLoadingState extends PaymentStates {}

class PaymentSuccessState extends PaymentStates {}

class PaymentErrorState extends PaymentStates {
  final String errMsg;

  PaymentErrorState({required this.errMsg});
}
