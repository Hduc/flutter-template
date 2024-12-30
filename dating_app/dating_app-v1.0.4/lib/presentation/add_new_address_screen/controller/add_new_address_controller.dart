import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/add_new_address_screen/models/add_new_address_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {TextEditingController nameoneController = TextEditingController();

TextEditingController addresslineoneController = TextEditingController();

TextEditingController addresslinetwoController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController countryoneController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); nameoneController.dispose(); addresslineoneController.dispose(); addresslinetwoController.dispose(); cityController.dispose(); countryController.dispose(); countryoneController.dispose(); phoneNumberController.dispose(); } 
 }
