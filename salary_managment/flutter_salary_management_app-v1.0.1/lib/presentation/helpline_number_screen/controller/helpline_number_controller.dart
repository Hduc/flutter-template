import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/helpline_number_screen/models/helpline_number_model.dart';/// A controller class for the HelplineNumberScreen.
///
/// This class manages the state of the HelplineNumberScreen, including the
/// current helplineNumberModelObj
class HelplineNumberController extends GetxController {Rx<HelplineNumberModel> helplineNumberModelObj = HelplineNumberModel().obs;

Rx<String> radioGroup = "".obs;

 }
