import '../../../core/app_export.dart';
import 'grosscard_item_model.dart';
import 'closelist_item_model.dart';
import 'transactioncomponentlist_item_model.dart';

/// This class defines the variables used in the [wallet_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WalletScreenModel {
  Rx<List<GrosscardItemModel>> grosscardItemList = Rx([
    GrosscardItemModel(
        label: "Gross income".obs,
        price: "33,400".obs,
        grossIncomeImage: ImageConstant.imgChart.obs),
    GrosscardItemModel(
        label: "Net income".obs,
        price: "7,400".obs,
        grossIncomeImage: ImageConstant.imgChartIndigoA20001.obs)
  ]);

  Rx<List<CloselistItemModel>> closelistItemList = Rx([
    CloselistItemModel(
        close: ImageConstant.salary.obs,
        userName: "Salary bonus".obs,
        rechargeStatus: "income".obs,
        amount: "2040.00".obs),
    CloselistItemModel(
        close: ImageConstant.
        lesils.obs,
        userName: "Leslie alexander".obs,
        rechargeStatus: "Recharge complete".obs,
        amount: "-400.00".obs)
  ]);

  Rx<List<TransactioncomponentlistItemModel>> transactioncomponentlistItemList =
      Rx([
    TransactioncomponentlistItemModel(
        icPhone: ImageConstant.homeOne.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-500.00".obs),
    TransactioncomponentlistItemModel(
        icPhone: ImageConstant.homeTwo.obs,
        userName: "Salary credit".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "2500.00".obs),
    TransactioncomponentlistItemModel(
        icPhone: ImageConstant.homeThree.obs,
        userName: "Salary bonus".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "700.00".obs),
    TransactioncomponentlistItemModel(
        icPhone: ImageConstant.homeFour.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-200.00".obs)
  ]);
}
