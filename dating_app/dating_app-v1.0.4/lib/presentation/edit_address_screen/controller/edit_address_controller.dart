import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/edit_address_screen/models/edit_address_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the EditAddressScreen.
///
/// This class manages the state of the EditAddressScreen, including the
/// current editAddressModelObj
class EditAddressController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController addresslineoneController = TextEditingController();

TextEditingController addresslinetwoController = TextEditingController();

TextEditingController selectcityController = TextEditingController();

TextEditingController selectstateController = TextEditingController();

TextEditingController selectstateoneController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<EditAddressModel> editAddressModelObj = EditAddressModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); fullnameController.dispose(); addresslineoneController.dispose(); addresslinetwoController.dispose(); selectcityController.dispose(); selectstateController.dispose(); selectstateoneController.dispose(); phoneNumberController.dispose(); } 
 }
