import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/notification_screen/models/notification_model.dart';

import '../../home_page/models/model_data.dart';


class NotificationController extends GetxController {

 List<NotificationModel> messageList = HomeModelData.messageList();
 bool isNotification = false;

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
