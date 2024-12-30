import '../controller/transaction_history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionHistoryScreen.
///
/// This class ensures that the TransactionHistoryController is created when the
/// TransactionHistoryScreen is first loaded.
class TransactionHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionHistoryController());
  }
}
