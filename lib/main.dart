import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payments_integration/core/utiles/constants/app_keys.dart';
import 'package:payments_integration/core/utiles/services/bloc_observer.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/checkout_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  Stripe.publishableKey = AppKeys.stripePublishableKey;

  runApp(const TestPayment());
}

class TestPayment extends StatelessWidget {
  const TestPayment({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckoutView(),
    );
  }
}
