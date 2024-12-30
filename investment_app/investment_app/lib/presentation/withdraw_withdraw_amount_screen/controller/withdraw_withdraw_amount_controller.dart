import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/withdraw_withdraw_amount_screen/models/withdraw_withdraw_amount_model.dart';

class WithdrawWithdrawAmountController extends GetxController {
  Rx<WithdrawWithdrawAmountModel> withdrawWithdrawAmountModelObj =
      WithdrawWithdrawAmountModel().obs;

  SelectionPopupModel? selectedDropDownValue;
String amount  = "0.0";
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    withdrawWithdrawAmountModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    withdrawWithdrawAmountModelObj.value.dropdownItemList.refresh();
  }

  void setAmount(String pin) {
    amount = pin;
    update();
  }
}
