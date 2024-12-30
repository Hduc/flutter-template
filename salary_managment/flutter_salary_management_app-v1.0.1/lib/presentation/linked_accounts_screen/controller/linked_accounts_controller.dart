import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/linked_accounts_screen/models/linked_accounts_model.dart';/// A controller class for the LinkedAccountsScreen.
///
/// This class manages the state of the LinkedAccountsScreen, including the
/// current linkedAccountsModelObj
class LinkedAccountsController extends GetxController {Rx<LinkedAccountsModel> linkedAccountsModelObj = LinkedAccountsModel().obs;

 }
