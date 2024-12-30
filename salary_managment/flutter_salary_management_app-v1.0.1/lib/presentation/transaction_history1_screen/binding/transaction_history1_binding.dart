import '../controller/transaction_history1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionHistory1Screen.
///
/// This class ensures that the TransactionHistory1Controller is created when the
/// TransactionHistory1Screen is first loaded.
class TransactionHistory1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionHistory1Controller());
  }
}
