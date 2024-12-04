import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/help_screen/models/help_model.dart';

class HelpController extends GetxController {
  Rx<HelpModel> helpModelObj = HelpModel().obs;

  bool tileExpanded = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
