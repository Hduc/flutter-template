import '../controller/history_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryEmptyScreen.
///
/// This class ensures that the HistoryEmptyController is created when the
/// HistoryEmptyScreen is first loaded.
class HistoryEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryEmptyController());
  }
}
