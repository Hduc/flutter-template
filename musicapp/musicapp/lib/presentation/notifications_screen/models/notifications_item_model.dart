import 'package:get/get.dart';

/// This class is used in the [notifications_item_widget] screen.

class NotificationsItemModel {
  Rx<String> questionTxt = Rx("How to download Hindi songs online?");

  Rx<String> timeTxt = Rx("2 min");

  Rx<String>? id = Rx("");

  String? messege;
  String? time;

  NotificationsItemModel(this.messege,this.time);
}
