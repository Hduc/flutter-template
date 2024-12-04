import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/deposit_deposit_amount_screen/models/deposit_deposit_amount_model.dart';

class DepositDepositAmountController extends GetxController {
  Rx<DepositDepositAmountModel> depositDepositAmountModelObj =
      DepositDepositAmountModel().obs;

  SelectionPopupModel? selectedDropDownValue;
String amount ='0.0';
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
    depositDepositAmountModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    depositDepositAmountModelObj.value.dropdownItemList.refresh();
  }

  void setAmount(String pin) {
    amount = pin;
    update();
  }
}
