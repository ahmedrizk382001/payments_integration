import 'package:payments_integration/core/utiles/constants/app_keys.dart';
import 'package:payments_integration/featues/payment/data/models/order_model.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/amount.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/details.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/item.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/item_list.dart';
import 'package:payments_integration/featues/payment/data/models/paypal_transactions_input_model/paypal_transactions_input_model.dart';

class TestModels {
  late OrderModel orderModel;
  late PaypalTransactionsInputModel paypalTransactionsInputModel;

  void initStripeTestModel() {
    orderModel = OrderModel(
        amount: "687", currency: "usd", customer: AppKeys.testCustomerId);
  }

  void initPaypalTestModel() {
    Details details = Details(shipping: "7", subtotal: "680");

    Amount amount = Amount(total: "687", currency: "USD", details: details);

    Item item = Item(
      currency: "USD",
      price: "680",
      name: "shoes",
      quantity: "1",
    );

    ItemList itemList = ItemList(items: [item]);

    paypalTransactionsInputModel =
        PaypalTransactionsInputModel(amount: amount, itemList: itemList);
  }
}
