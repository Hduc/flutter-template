import '../controller/linked_accounts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LinkedAccountsScreen.
///
/// This class ensures that the LinkedAccountsController is created when the
/// LinkedAccountsScreen is first loaded.
class LinkedAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkedAccountsController());
  }
}
