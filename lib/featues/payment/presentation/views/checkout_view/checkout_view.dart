import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments_integration/featues/payment/domain/repo/checkout_repo_imp.dart';
import 'package:payments_integration/featues/payment/presentation/manager/payment_cubit.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/checkout_view_body.dart';
import 'package:payments_integration/featues/payment/presentation/views/checkout_view/widgets/custom_appbar.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(checkoutRepo: CheckoutRepoImp()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(),
        body: const SafeArea(child: CheckoutViewBody()),
      ),
    );
  }
}
