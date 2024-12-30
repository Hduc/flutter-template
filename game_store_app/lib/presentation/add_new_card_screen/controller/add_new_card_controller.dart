import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';class AddNewCardController extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardnumberController.dispose(); nameController.dispose(); cvvController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; addNewCardModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); addNewCardModelObj.value.dropdownItemList.refresh(); } 
 }
