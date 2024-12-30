import '../../../core/app_export.dart';
import 'transactioncomponent3_item_model.dart';

/// This class defines the variables used in the [transaction_history1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionHistory1Model {
  Rx<List<Transactioncomponent3ItemModel>> transactioncomponent3ItemList = Rx([
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeOne.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-500.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeTwo.obs,
        userName: "Salary credit".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "2500.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeThree.obs,
        userName: "Salary bonus".obs,
        transactionStatus: "20,12,2023".obs,
        transactionAmount: "700.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeFour.obs,
        userName: "Ronald richards".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-400.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeFive.obs,
        userName: "Miraj cinemas".obs,
        transactionStatus: "Movie ticket booking".obs,
        transactionAmount: "-800.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeSix.obs,
        userName: "Shopping  from mall".obs,
        transactionStatus: "General spend".obs,
        transactionAmount: "-200.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeSevan.obs,
        userName: "Raj Imperial, inox".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-900.00".obs),
    Transactioncomponent3ItemModel(
        phoneIcon: ImageConstant.homeEgiht.obs,
        userName: "Raj Imperial, inox".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-900.00".obs),
  ]);
}
