import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/log_out_dialog/models/log_out_model.dart';/// A controller class for the LogOutDialog.
///
/// This class manages the state of the LogOutDialog, including the
/// current logOutModelObj
class LogOutController extends GetxController {Rx<LogOutModel> logOutModelObj = LogOutModel().obs;

 }
