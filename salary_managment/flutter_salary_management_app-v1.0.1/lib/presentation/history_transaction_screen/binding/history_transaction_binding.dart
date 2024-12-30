import '../controller/history_transaction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryTransactionScreen.
///
/// This class ensures that the HistoryTransactionController is created when the
/// HistoryTransactionScreen is first loaded.
class HistoryTransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTransactionController());
  }
}
