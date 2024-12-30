import '../../../core/app_export.dart';
import 'transactioncomponent1_item_model.dart';

/// This class defines the variables used in the [recent_transaction_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecentTransactionModel {
  Rx<List<Transactioncomponent1ItemModel>> transactioncomponent1ItemList = Rx([
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeOne.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-500.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeTwo.obs,
        userName: "Salary credit".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "\$2500.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeThree.obs,
        userName: "Salary bonus".obs,
        transactionStatus: "20,12,2023".obs,
        transactionAmount: "\$700.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeFour.obs,
        userName: "Ronald richards".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-\$400.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeFive.obs,
        userName: "Miraj cinemas".obs,
        transactionStatus: "Movie ticket booking".obs,
        transactionAmount: "-\$800.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeSix.obs,
        userName: "Coffee shop".obs,
        transactionStatus: "General spend".obs,
        transactionAmount: "-\$100.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeSevan.obs,
        userName: "Shopping  from mall".obs,
        transactionStatus: "General spend".obs,
        transactionAmount: "-\$200.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeEgiht.obs,
        userName: "Raj Imperial, inox".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-\$900.00".obs),
    Transactioncomponent1ItemModel(
        icPhone: ImageConstant.homeNigh.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-200.00".obs),
  ]);
}
