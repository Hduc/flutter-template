import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/notification_screen/models/notification_model.dart';class NotificationController extends GetxController {Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
