import 'package:flutter_salary_management_app/core/app_export.dart';import 'package:flutter_salary_management_app/presentation/notification_empty_screen/models/notification_empty_model.dart';/// A controller class for the NotificationEmptyScreen.
///
/// This class manages the state of the NotificationEmptyScreen, including the
/// current notificationEmptyModelObj
class NotificationEmptyController extends GetxController {Rx<NotificationEmptyModel> notificationEmptyModelObj = NotificationEmptyModel().obs;

 }
