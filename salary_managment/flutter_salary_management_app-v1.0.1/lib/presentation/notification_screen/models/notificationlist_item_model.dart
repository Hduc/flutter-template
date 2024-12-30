import '../../../core/app_export.dart';/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {NotificationlistItemModel({this.titleText, this.descriptionText, this.timeText, this.id, }) { titleText = titleText  ?? Rx("Equitable salary management");descriptionText = descriptionText  ?? Rx("Lorem ipsum dolor sit amet consectetur. Nec sit lectus vitae laoreet. feugiat.");timeText = timeText  ?? Rx("a few seconds ago");id = id  ?? Rx(""); }

Rx<String>? titleText;

Rx<String>? descriptionText;

Rx<String>? timeText;

Rx<String>? id;

 }
