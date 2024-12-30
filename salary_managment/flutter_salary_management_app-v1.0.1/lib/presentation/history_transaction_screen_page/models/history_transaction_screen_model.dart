import '../../../core/app_export.dart';
import 'transactioncomponentsection_item_model.dart';

/// This class defines the variables used in the [history_transaction_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryTransactionScreenModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<TransactioncomponentsectionItemModel>>
      transactioncomponentsectionItemList = Rx([
    TransactioncomponentsectionItemModel(
        icPhone: ImageConstant.homeOne.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-500.00".obs),
    TransactioncomponentsectionItemModel(
        icPhone: ImageConstant.homeTwo.obs,
        userName: "Salary credit".obs,
        transactionStatus: "Income".obs,
        transactionAmount: "\$2500.00".obs),
    TransactioncomponentsectionItemModel(
        icPhone: ImageConstant.homeThree.obs,
        userName: "Salary bonus".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "\$700.00".obs),
    TransactioncomponentsectionItemModel(
        icPhone: ImageConstant.homeFour.obs,
        userName: "Esther howard".obs,
        transactionStatus: "Recharge complete".obs,
        transactionAmount: "-\$200.00".obs),
  ]);
}
