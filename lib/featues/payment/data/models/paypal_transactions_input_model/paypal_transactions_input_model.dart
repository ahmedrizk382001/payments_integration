import 'amount.dart';
import 'item_list.dart';
import 'payment_options.dart';

class PaypalTransactionsInputModel {
  Amount? amount;
  String? description;
  String? custom;
  String? invoiceNumber;
  PaymentOptions? paymentOptions;
  String? softDescriptor;
  ItemList? itemList;

  PaypalTransactionsInputModel({
    this.amount,
    this.description,
    this.custom,
    this.invoiceNumber,
    this.paymentOptions,
    this.softDescriptor,
    this.itemList,
  });

  factory PaypalTransactionsInputModel.fromJson(Map<String, dynamic> json) {
    return PaypalTransactionsInputModel(
      amount: json['amount'] == null
          ? null
          : Amount.fromJson(json['amount'] as Map<String, dynamic>),
      description: json['description'] as String?,
      custom: json['custom'] as String?,
      invoiceNumber: json['invoice_number'] as String?,
      paymentOptions: json['payment_options'] == null
          ? null
          : PaymentOptions.fromJson(
              json['payment_options'] as Map<String, dynamic>),
      softDescriptor: json['soft_descriptor'] as String?,
      itemList: json['item_list'] == null
          ? null
          : ItemList.fromJson(json['item_list'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'custom': custom,
        'invoice_number': invoiceNumber,
        'payment_options': paymentOptions?.toJson(),
        'soft_descriptor': softDescriptor,
        'item_list': itemList?.toJson(),
      };
}
