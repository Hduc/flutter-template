import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/sell_screen/models/sell_model.dart';

class SellController extends GetxController {
  Rx<SellModel> sellModelObj = SellModel().obs;
  SelectionPopupModel? selectedDropDownValue;
String amount = "0.0";
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
    sellModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    sellModelObj.value.dropdownItemList.refresh();
  }

  void setAmount(String pin) {
    amount = pin;
    update();
  }
}
