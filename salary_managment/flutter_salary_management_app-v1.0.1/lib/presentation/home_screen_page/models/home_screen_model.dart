import '../../../core/app_export.dart';
import 'transactioncomponent_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  Rx<List<TransactioncomponentItemModel>> transactioncomponentItemList = Rx([
    TransactioncomponentItemModel(
        phoneIcon: ImageConstant.homeOne.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-500.00".obs),
    TransactioncomponentItemModel(
        phoneIcon: ImageConstant.homeTwo.obs,
        userName: "Salary credit".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "2500.00".obs),
    TransactioncomponentItemModel(
        phoneIcon: ImageConstant.homeThree.obs,
        userName: "Salary bonus".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "700.00".obs),
    TransactioncomponentItemModel(
        phoneIcon: ImageConstant.homeFour.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-\$200.00".obs)
  ]);
}
