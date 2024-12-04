import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/register_address_screen/models/register_address_model.dart';import 'package:flutter/material.dart';class RegisterAddressController extends GetxController {TextEditingController inputbaseController = TextEditingController();

Rx<RegisterAddressModel> registerAddressModelObj = RegisterAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputbaseController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; registerAddressModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); registerAddressModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; registerAddressModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); registerAddressModelObj.value.dropdownItemList1.refresh(); } 
 }
