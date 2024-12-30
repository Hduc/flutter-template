import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/add_manually_address_screen/models/add_manually_address_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddManuallyAddressScreen.
///
/// This class manages the state of the AddManuallyAddressScreen, including the
/// current addManuallyAddressModelObj
class AddManuallyAddressController extends GetxController {TextEditingController nameoneController = TextEditingController();

TextEditingController addresslineoneController = TextEditingController();

TextEditingController addresslinetwoController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController stateController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddManuallyAddressModel> addManuallyAddressModelObj = AddManuallyAddressModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); nameoneController.dispose(); addresslineoneController.dispose(); addresslinetwoController.dispose(); cityController.dispose(); stateController.dispose(); countryController.dispose(); phoneNumberController.dispose(); } 
 }
