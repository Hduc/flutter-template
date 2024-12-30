import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/wallet_empty_screen/models/wallet_empty_model.dart';

/// A controller class for the WalletEmptyScreen.
///
/// This class manages the state of the WalletEmptyScreen, including the
/// current walletEmptyModelObj
class WalletEmptyController extends GetxController {
  Rx<WalletEmptyModel> walletEmptyModelObj = WalletEmptyModel().obs;
}
