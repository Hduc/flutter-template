import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/empty_notification_screen/models/empty_notification_model.dart';class EmptyNotificationController extends GetxController {Rx<EmptyNotificationModel> emptyNotificationModelObj = EmptyNotificationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
