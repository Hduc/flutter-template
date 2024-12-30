import '../../../core/app_export.dart';
import 'notificationlist_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationlistItemModel>> notificationlistItemList = Rx([
    NotificationlistItemModel(
        titleText: "Equitable salary management".obs,
        descriptionText:
            "Lorem ipsum dolor sit amet consectetur. Nec sit lectus vitae laoreet. feugiat."
                .obs,
        timeText: "a few seconds ago".obs),
    NotificationlistItemModel(
        titleText: "System for efficiency and growth".obs,
        descriptionText:
            "Lorem ipsum dolor sit amet consectetur. Nec sit lectus vitae laoreet. feugiat."
                .obs,
        timeText: "30 seconds ago".obs),
    NotificationlistItemModel(
        titleText: "Fuels motivation and retention".obs,
        descriptionText:
            "Lorem ipsum dolor sit amet consectetur. Nec sit lectus vitae laoreet. feugiat."
                .obs,
        timeText: "2 days ago".obs),
    NotificationlistItemModel(
        titleText: "Rise of open salary policies".obs,
        descriptionText:
            "Lorem ipsum dolor sit amet consectetur. Nec sit lectus vitae laoreet. feugiat."
                .obs,
        timeText: "1 week ago".obs),
    NotificationlistItemModel(
        titleText: "Equity from the ground up".obs,
        descriptionText:
            "Buy 1 get 1 free small sizes until sep 30,2021 when you order via Foodbase!"
                .obs,
        timeText: "a few seconds ago".obs)
  ]);
}
