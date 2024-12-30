import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/recent_transaction_screen/models/recent_transaction_model.dart';/// A controller class for the RecentTransactionScreen.
///
/// This class manages the state of the RecentTransactionScreen, including the
/// current recentTransactionModelObj
class RecentTransactionController extends GetxController {Rx<RecentTransactionModel> recentTransactionModelObj = RecentTransactionModel().obs;

 }
