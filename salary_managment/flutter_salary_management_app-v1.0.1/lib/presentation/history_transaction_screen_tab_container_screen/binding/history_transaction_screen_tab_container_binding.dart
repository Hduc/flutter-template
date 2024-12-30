import '../controller/history_transaction_screen_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryTransactionScreenTabContainerScreen.
///
/// This class ensures that the HistoryTransactionScreenTabContainerController is created when the
/// HistoryTransactionScreenTabContainerScreen is first loaded.
class HistoryTransactionScreenTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTransactionScreenTabContainerController());
  }
}
