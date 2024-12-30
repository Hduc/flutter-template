import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/security_setting_screen/models/security_setting_model.dart';/// A controller class for the SecuritySettingScreen.
///
/// This class manages the state of the SecuritySettingScreen, including the
/// current securitySettingModelObj
class SecuritySettingController extends GetxController {Rx<SecuritySettingModel> securitySettingModelObj = SecuritySettingModel().obs;

Rx<bool> isSelectedSwitch = true.obs;

Rx<bool> isSelectedSwitch1 = true.obs;

Rx<bool> isSelectedSwitch2 = true.obs;

 }
