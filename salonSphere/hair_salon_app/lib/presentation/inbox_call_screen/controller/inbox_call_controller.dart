import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/inbox_call_screen/models/inbox_call_model.dart';

class InboxCallController extends GetxController {
  Rx<InboxCallModel> inboxCallModelObj = InboxCallModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
