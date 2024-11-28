import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:payments_integration/core/utiles/constants/app_keys.dart';
import 'package:payments_integration/core/utiles/constants/test_models.dart';
import 'package:payments_integration/core/utiles/services/paypal_service.dart';
import 'package:payments_integration/core/utiles/widgets/custom_button.dart';
import 'package:payments_integration/featues/payment/data/models/invoice_model.dart';
import 'package:payments_integration/featues/payment/domain/repo/checkout_repo_imp.dart';
import 'package:payments_integration/featues/payment/presentation/manager/payment_cubit.dart';
import 'package:payments_integration/featues/payment/presentation/manager/payment_states.dart';
import 'package:payments_integration/featues/payment/presentation/views/payment_success_view/payment_success_view.dart';

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  late TestModels testModels;
  late InvoiceModel invoiceModel;

  late DateTime now;
  late String formattedDate;
  late String formattedTime;

  void createInvoice() {
    invoiceModel = InvoiceModel(
        time: formattedTime,
        date: formattedDate,
        paymentMethod: widget.selectedIndex == 0 ? "Credit Card" : "Paypal",
        amount: testModels.orderModel.amount);
  }

  void setDateAndTime() {
    now = DateTime.now();
    formattedDate = DateFormat('MMM dd, yyyy').format(now);
    formattedTime = DateFormat('hh:mm a').format(now);
  }

  @override
  void initState() {
    testModels = TestModels()
      ..initStripeTestModel()
      ..initPaypalTestModel();

    setDateAndTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(checkoutRepo: CheckoutRepoImp()),
      child: BlocConsumer<PaymentCubit, PaymentStates>(
        listener: (context, state) {
          if (state is PaymentErrorState) {
            print(state.errMsg);
          } else if (state is PaymentSuccessState) {
            createInvoice();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PaymentSuccessView(
                invoiceModel: invoiceModel,
              ),
            ));
          }
        },
        builder: (context, state) {
          return CustomButton(
            text: "Continue",
            onTap: () {
              if (widget.selectedIndex == 0) {
                PaymentCubit.get(context)
                    .makePayment(orderModel: testModels.orderModel);
              } else if (widget.selectedIndex == 1) {
                _paypalMethod(context);
              }
            },
          );
        },
      ),
    );
  }

  void _paypalMethod(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PaypalService(
          paypalClientId: AppKeys.paypalClientId,
          paypalSecretKey: AppKeys.paypalSecretKey,
          onSuccess: (Map param) async {
            createInvoice();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PaymentSuccessView(
                invoiceModel: invoiceModel,
              ),
            ));
          },
          paypalTransactionsInputModel:
              testModels.paypalTransactionsInputModel),
    ));
  }
}
