import '../controller/recent_transaction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentTransactionScreen.
///
/// This class ensures that the RecentTransactionController is created when the
/// RecentTransactionScreen is first loaded.
class RecentTransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentTransactionController());
  }
}
