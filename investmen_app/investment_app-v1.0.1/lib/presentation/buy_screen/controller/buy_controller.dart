import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/buy_screen/models/buy_model.dart';class BuyController extends GetxController {Rx<BuyModel> buyModelObj = BuyModel().obs;

SelectionPopupModel? selectedDropDownValue;
String amount = "0.0";
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; buyModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); buyModelObj.value.dropdownItemList.refresh(); }

  void setAmount(String pin) {
  amount = pin;
  update();
  }
 }
