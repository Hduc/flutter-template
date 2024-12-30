import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/delete_account_dialog/models/delete_account_model.dart';/// A controller class for the DeleteAccountDialog.
///
/// This class manages the state of the DeleteAccountDialog, including the
/// current deleteAccountModelObj
class DeleteAccountController extends GetxController {Rx<DeleteAccountModel> deleteAccountModelObj = DeleteAccountModel().obs;

 }
