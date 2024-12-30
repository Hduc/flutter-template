import '../controller/wallet_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WalletEmptyScreen.
///
/// This class ensures that the WalletEmptyController is created when the
/// WalletEmptyScreen is first loaded.
class WalletEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletEmptyController());
  }
}
